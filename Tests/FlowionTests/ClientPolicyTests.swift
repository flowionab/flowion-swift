import Flowion
import Foundation
import HTTPTypes
import OpenAPIRuntime
import XCTest

private actor CaptureTransport: ClientTransport {
  var requests: [HTTPRequest] = []
  var bodies: [Data] = []
  func send(_ request: HTTPRequest, body: HTTPBody?, baseURL: URL, operationID: String) async throws
    -> (HTTPResponse, HTTPBody?)
  {
    requests.append(request)
    bodies.append(try await Data(collecting: body ?? HTTPBody(""), upTo: 1_048_576))
    return (HTTPResponse(status: .noContent), nil)
  }
}

private actor Credentials {
  var counter = 0
  func token() -> String {
    counter += 1
    return "token-\(counter)"
  }
}

final class ClientPolicyTests: XCTestCase {
  func testPatchPresenceSurvivesGeneratedHTTPRequest() async throws {
    let transport = CaptureTransport()
    let credentials = Credentials()
    let client = FlowionClient(
      token: { await credentials.token() }, mode: .sandbox, transport: transport)
    for raw in ["{}", #"{"timeZone":null}"#, #"{"timeZone":"Europe/Stockholm"}"#] {
      let body = try JSONDecoder().decode(
        Components.Schemas.UpdateLocationRequest.self, from: Data(raw.utf8))
      _ = try await client.updateLocation(path: .init(locationId: "location"), body: .json(body))
    }
    let bodies = await transport.bodies
    XCTAssertEqual(bodies.count, 3)
    let values = try bodies.map { try JSONDecoder().decode(JSONValue.self, from: $0) }
    XCTAssertEqual(
      values,
      [
        .object([:]), .object(["timeZone": .null]),
        .object(["timeZone": .string("Europe/Stockholm")]),
      ])
    let requests = await transport.requests
    XCTAssertEqual(
      requests.map { $0.headerFields[.authorization] },
      ["Bearer token-1", "Bearer token-2", "Bearer token-3"])
    XCTAssertTrue(
      requests.allSatisfy { $0.headerFields[HTTPField.Name("X-Flowion-Mode")!] == "sandbox" })
  }

  func testCancellationStopsBeforeSending() async throws {
    let transport = CaptureTransport()
    let client = FlowionClient(token: { "token" }, transport: transport)
    let task = Task {
      withUnsafeCurrentTask { $0?.cancel() }
      return try await client.getCharger(path: .init(chargingStationId: "id"))
    }
    do {
      _ = try await task.value
      XCTFail("Expected cancellation")
    } catch is CancellationError {}
    let requests = await transport.requests
    XCTAssertTrue(requests.isEmpty)
  }

  func testUnknownPayloadKeepsLargeInteger() throws {
    let raw = Data(#"{"type":"future","counter":18446744073709551615}"#.utf8)
    let value = try JSONDecoder().decode(Components.Schemas.CommandResultApi.self, from: raw)
    let result = try JSONDecoder().decode(JSONValue.self, from: JSONEncoder().encode(value))
    XCTAssertEqual(result.objectValue?["counter"], .unsigned(UInt64.max))
  }

  func testMalformedKnownUnionDoesNotBecomeUnknown() {
    XCTAssertThrowsError(
      try JSONDecoder().decode(
        Components.Schemas.CommandResultApi.self, from: Data(#"{"type":"reset","status":42}"#.utf8))
    )
  }
}
