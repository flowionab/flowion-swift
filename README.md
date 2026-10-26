# Flowion for Swift

A typed, async Swift client for the Flowion API. The package product and module
are `Flowion`; the authenticated entry point is `FlowionClient`. Requires Swift
6.2 or newer, iOS 16 or macOS 13. Licensed MIT OR Apache-2.0.

In Xcode, add `https://github.com/flowionab/flowion-swift.git` as a package
dependency, select a released version, and link the **Flowion** product to your
app target. In a Swift package, use the same Git URL and add
`.product(name: "Flowion", package: "flowion-swift")` to the target's dependencies.
From a clone of the distribution repository, run `swift test` to verify the package.

```swift
import Flowion

let client = FlowionClient(token: { try await session.accessToken() })
let response = try await client.getCharger(
    path: .init(chargingStationId: chargerID)
)
let charger = try response.ok.body.json
```

The token closure runs for each logical request, so an app can refresh its
credential without reconstructing the client. `mode: .sandbox` selects sandbox
requests. The client supplies the API version from the generated contract.
`Client` is also available for callers that want Apple's transport and
middleware interfaces without Flowion's policy layer.

`FlowionError` carries the status, error code, request ID, retry delay and raw
response body. Unknown server error codes remain strings. Only HTTP 429 is
retried (four attempts by default, with waits capped at 30 seconds); other
statuses and transport failures are returned immediately. A streaming upload
with a single-use body is never replayed. Cancellation propagates to the caller.
A supplied `ClientTransport` and sleep closure support deterministic tests.

## Forward compatibility and PATCH

Response enums have a `rawValue` and `isKnown`, preserving new server values.
Response unions preserve future variants as `.unknown(JSONValue)`. Request-only
enums remain closed. An enum shared by requests and responses is open, so the
server still validates values sent in requests.

Nullable PATCH fields use `Patch<T>`: `.omitted` leaves a field alone, `.null`
clears it, and `.value(...)` sets it. This applies to nested settings too.

```swift
let patch = Components.Schemas.UpdateLocationRequest(timeZone: .null)
```

`PaginatedItems` accepts a page-fetching closure and requests the next page only
when needed. `client.liveEvents(projectId:)` returns a lazy async sequence with
`.known` and `.unrecognized` events; `await stream.end` distinguishes clean
closure from credential revocation. Create one iterator per live stream.
No automatic reconnect is performed.

## Build and distribution

The monorepo owns handwritten sources, generator pins, the schema adapter and
public API snapshot. Bazel generates Swift into its build outputs; the
distribution repository includes those generated sources for SwiftPM consumers.
Build and test from the monorepo root:

```sh
bazelisk test //sdks/codegen:unit_test
# the Swift tests are tagged `swift` and left out of a plain run (ADR-0232); on the
# farm: --config=rbe --config=swift
bazelisk test --config=swift //sdks/swift/...
bazelisk build //sdks/swift:package
# :package_test (in the line above) is SwiftPM on the exported tree, offline,
# against the pinned dependencies; this is the release's online version:
bazelisk run //sdks/swift:verify_package
# Compile for a real iPhone (requires Xcode):
bazelisk build //sdks/swift:Flowion --platforms=//bazel/ios:ios_arm64 --ios_minimum_os=16.0
```

The `package` target produces `sdks/swift/flowion-swift.tar` under
`bazelisk info bazel-bin`. It contains a complete, ordinary Swift package:
`Package.swift`, handwritten and generated sources, tests with shared fixtures,
licences and a SHA-256 source manifest. Consumers need neither Bazel nor an
OpenAPI generator. This exported repository supports `swift test` directly.

The distribution repository is `flowion-swift`. After the monorepo's SDK release
has passed its checks and created `sdk-swift-vX.Y.Z`, export that tagged revision,
commit the package contents to the distribution repo, and tag that commit
`X.Y.Z`. SwiftPM consumes the Git URL and semantic version tag. Never move an
existing version tag. The first public repository and release are not created
by building this package.

`scripts/release-sdks.sh` stamps `sdk.json`, rebuilds the package and public
surface, and verifies the SDK with the existing release gates. `surface.txt`
comes from the compiler's public symbol graph, including conformance facts.
Regenerate it with `bazelisk build //sdks/swift:surface`, then copy
`sdks/swift/public-surface.txt` from Bazel's output directory into `surface.txt`.
Only the release process may update `sdks/released/`.

Generation uses Apple Swift OpenAPI Generator 1.13.1, pinned with runtime 1.12.2,
URLSession transport 1.3.2 and HTTPTypes 1.8.0. The Flowion adapter normalizes
nullable schemas, opens response types and preserves PATCH presence. Generation
fails on warnings or missing operations. Preview operations are excluded.
Bazel fetches Swift 6.4.0 and checksum-pinned runtime libraries on Linux x86_64;
no Swift installation or root access is needed on the runner. Its native C/C++
toolchain also uses the pinned `rules_swift` Linux sysroot. The host must provide
glibc 2.35 or newer; macOS/iOS builds use the selected Xcode SDK and compiler.
SwiftPM dependency resolution and `verify_package` use the Bazel-provided host
executable too. The runtime pins live in `bazel/swift/linux-runtime.json`; the
small SwiftPM repository patch supplies an explicit compiler instead of PATH.
Linux verification runs in CI and on the build farm (`bazel/swift/README.md`).
