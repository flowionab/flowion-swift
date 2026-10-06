import Flowion
import Foundation
import HTTPTypes
import OpenAPIRuntime
import XCTest

private struct Scenario: Decodable, Sendable {
  struct Config: Decodable, Sendable {
    struct Retry: Decodable, Sendable {
      let maxAttempts: Int
      let maxWaitSeconds: UInt64?
    }
    let retry: Retry?
  }
  struct Call: Decodable, Sendable {
    let operation: String
    let mode: String?
    let path: [String: String]
    let query: [String: JSONValue]?
    let stopAfterItems: Int?
  }
  struct Exchange: Decodable, Sendable {
    struct Expect: Decodable, Sendable {
      let method: String
      let path: String
      let query: [String: String]?
      let headers: [String: String]?
    }
    struct Respond: Decodable, Sendable {
      let status: Int?
      let headers: [String: String]?
      let body: JSONValue?
      let bodyText: String?
      let frames: [String]?
      let transportError: String?
    }
    let expect: Expect
    let respond: Respond
  }
  let name: String
  let client: Config?
  let call: Call
  let exchange: [Exchange]
  let expectOutcome: JSONValue
  let expectWaitsSeconds: [UInt64]?
  let expectRateLimit: JSONValue?
}

private actor ScenarioTransport: ClientTransport {
  let scenario: Scenario
  var cursor = 0
  var waits: [UInt64] = []
  init(_ scenario: Scenario) { self.scenario = scenario }
  func sleep(_ seconds: UInt64) { waits.append(seconds) }
  func send(_ request: HTTPRequest, body: HTTPBody?, baseURL: URL, operationID: String) async throws
    -> (HTTPResponse, HTTPBody?)
  {
    guard cursor < scenario.exchange.count else {
      XCTFail("Unexpected extra request: \(scenario.name)")
      throw URLError(.badServerResponse)
    }
    let exchange = scenario.exchange[cursor]
    cursor += 1
    XCTAssertEqual(operationID, scenario.call.operation)
    XCTAssertEqual(request.method.rawValue, exchange.expect.method)
    let components = URLComponents(string: "https://example.invalid" + (request.path ?? ""))!
    XCTAssertEqual(components.path, exchange.expect.path)
    let query = Dictionary(
      uniqueKeysWithValues: (components.queryItems ?? []).map { ($0.name, $0.value ?? "") })
    for (key, value) in exchange.expect.query ?? [:] { XCTAssertEqual(query[key], value) }
    for (key, value) in exchange.expect.headers ?? [:] {
      XCTAssertEqual(request.headerFields[HTTPField.Name(key)!], value)
    }
    XCTAssertEqual(request.headerFields[.authorization], "Bearer conformance-token")
    XCTAssertEqual(request.headerFields[HTTPField.Name("Api-Version")!], FlowionContract.apiVersion)
    if exchange.respond.transportError != nil { throw URLError(.networkConnectionLost) }
    var fields = HTTPFields()
    for (key, value) in exchange.respond.headers ?? [:] { fields[HTTPField.Name(key)!] = value }
    let responseBody: HTTPBody?
    if let frames = exchange.respond.frames {
      fields[.contentType] = "text/event-stream"
      responseBody = HTTPBody(frames.joined())
    } else if let body = exchange.respond.body {
      fields[.contentType] = fields[.contentType] ?? "application/json"
      responseBody = HTTPBody(try JSONEncoder().encode(body))
    } else if let text = exchange.respond.bodyText {
      responseBody = HTTPBody(text)
    } else {
      responseBody = nil
    }
    return (
      HTTPResponse(status: .init(code: exchange.respond.status!), headerFields: fields),
      responseBody
    )
  }
  func verify() {
    XCTAssertEqual(cursor, scenario.exchange.count, scenario.name)
    if let expected = scenario.expectWaitsSeconds { XCTAssertEqual(waits, expected, scenario.name) }
  }
}

final class ConformanceTests: XCTestCase {
  func testEverySharedScenario() async throws {
    #if SWIFT_PACKAGE
      let root = try XCTUnwrap(Bundle.module.url(forResource: "Scenarios", withExtension: nil))
    #else
      let root = URL(
        fileURLWithPath: ProcessInfo.processInfo.environment["SCENARIOS"] ?? "sdks/conformance")
    #endif
    let enumerator = try XCTUnwrap(
      FileManager.default.enumerator(at: root, includingPropertiesForKeys: nil))
    let files = enumerator.compactMap { $0 as? URL }.filter {
      $0.pathExtension == "json" && $0.lastPathComponent != "schema.json"
    }.sorted { $0.path < $1.path }
    XCTAssertFalse(files.isEmpty, "No shared scenarios found at \(root.path)")
    for file in files {
      let scenario = try JSONDecoder().decode(Scenario.self, from: Data(contentsOf: file))
      let transport = ScenarioTransport(scenario)
      let client = FlowionClient(
        token: { "conformance-token" },
        retry: .init(
          maxAttempts: scenario.client?.retry?.maxAttempts ?? 4,
          maxWaitSeconds: scenario.client?.retry?.maxWaitSeconds ?? 30),
        transport: transport, sleep: { await transport.sleep($0) })
      do {
        let actual = try await execute(scenario.call, client: client)
        XCTAssertEqual(actual, scenario.expectOutcome, scenario.name)
      } catch let error as FlowionError {
        let expected = try XCTUnwrap(
          scenario.expectOutcome.objectValue?["error"]?.objectValue,
          "Unexpected error \(error): \(scenario.name)")
        var actual: [String: JSONValue] = ["kind": .string(error.kind.rawValue)]
        if let status = error.status { actual["status"] = .integer(Int64(status)) }
        if let code = error.code { actual["code"] = .string(code) }
        if let id = error.requestId { actual["requestId"] = .string(id) }
        if let retry = error.retryAfterSeconds {
          actual["retryAfterSeconds"] = .integer(Int64(retry))
        }
        for (key, value) in expected {
          XCTAssertEqual(actual[key], value, "\(scenario.name): \(key)")
        }
      }
      if let expected = scenario.expectRateLimit {
        let currentRate = await client.lastRateLimit
        let rate = try XCTUnwrap(currentRate)
        let actual: JSONValue = .object([
          "limit": number(rate.limit), "remaining": number(rate.remaining),
          "resetSeconds": number(rate.resetSeconds),
          "retryAfterSeconds": number(rate.retryAfterSeconds),
        ])
        XCTAssertEqual(actual, expected, scenario.name)
      }
      await transport.verify()
      print("CONFORMANCE \(file.lastPathComponent)")
    }
  }

  private func number(_ value: UInt64?) -> JSONValue { value.map { .integer(Int64($0)) } ?? .null }
  private func json<T: Encodable>(_ value: T) throws -> JSONValue {
    let encoder = JSONEncoder()
    encoder.dateEncodingStrategy = .iso8601
    return try JSONDecoder().decode(JSONValue.self, from: encoder.encode(value))
  }
  private func execute(_ call: Scenario.Call, client: FlowionClient) async throws -> JSONValue {
    switch call.operation {
    case "get_charger":
      let response = try await client.getCharger(
        path: .init(chargingStationId: call.path["chargingStationId"]!))
      return .object(["ok": try json(response.ok.body.json)])
    case "list_transaction_events":
      let limit: Int32?
      if case .integer(let value) = call.query?["limit"] {
        limit = Int32(exactly: value)
      } else {
        limit = nil
      }
      let items = PaginatedItems<Components.Schemas.TransactionEventSummary> { cursor in
        let response = try await client.listTransactionEvents(
          path: .init(transactionId: call.path["transactionId"]!),
          query: .init(limit: limit, cursor: cursor))
        let page = try response.ok.body.json
        return Page(data: page.data, nextCursor: page.nextCursor)
      }
      var values: [JSONValue] = []
      for try await item in items {
        values.append(try json(item))
        if let stop = call.stopAfterItems, values.count >= stop { break }
      }
      return .object(["items": .array(values)])
    case "stream_live_events":
      let stream = client.liveEvents(projectId: call.path["projectId"]!)
      var values: [JSONValue] = []
      var unknown: [JSONValue] = []
      for try await item in stream {
        switch item {
        case .known(let value): values.append(try json(value))
        case .unrecognized(let value):
          unknown.append(.integer(Int64(values.count)))
          values.append(value)
        }
      }
      var result: [String: JSONValue] = [
        "items": .array(values), "end": .string((await stream.end)!.rawValue),
      ]
      if !unknown.isEmpty { result["unrecognized"] = .array(unknown) }
      return .object(result)
    default:
      XCTFail("Unimplemented scenario operation: \(call.operation)")
      throw URLError(.unsupportedURL)
    }
  }
}
