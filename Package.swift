// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "Flowion",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [.library(name: "Flowion", targets: ["Flowion"])],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.12.2"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.3.2"),
        .package(url: "https://github.com/apple/swift-http-types", from: "1.8.0"),
    ],
    targets: [
        .target(name: "Flowion", dependencies: [
            .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
            .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            .product(name: "HTTPTypes", package: "swift-http-types"),
        ]),
        .testTarget(name: "FlowionTests", dependencies: ["Flowion",
            .product(name: "HTTPTypes", package: "swift-http-types"),
            .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
        ],
                    resources: [.copy("Scenarios")]),
    ]
)
