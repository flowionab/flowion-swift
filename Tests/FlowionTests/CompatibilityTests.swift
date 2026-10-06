import Flowion
import Foundation
import HTTPTypes
import OpenAPIRuntime
import XCTest

final class CompatibilityTests: XCTestCase {
  private let decoder = JSONDecoder()
  private let encoder = JSONEncoder()

  func testKnownResponseEnum() throws {
    let value = try decoder.decode(
      Components.Schemas.ChargerStatus.self, from: Data("\"online\"".utf8))
    XCTAssertEqual(try encoder.encode(value), Data("\"online\"".utf8))
  }

  func testUnknownResponseEnumPreservesValue() throws {
    let raw = Data("\"future-status\"".utf8)
    let value = try decoder.decode(Components.Schemas.ChargerStatus.self, from: raw)
    XCTAssertEqual(try encoder.encode(value), raw)
  }

  func testUnknownErrorCodePreservesValue() throws {
    let raw = Data(
      #"{"error":"aCodeFromTheFuture","message":"newer than SDK","requestId":"req-future"}"#.utf8)
    let value = try decoder.decode(Components.Schemas.ErrorBody.self, from: raw)
    let result = try JSONSerialization.jsonObject(with: encoder.encode(value)) as! [String: Any]
    XCTAssertEqual(result["error"] as? String, "aCodeFromTheFuture")
  }

  func testKnownResponseUnion() throws {
    let raw = Data(#"{"type":"reset","status":"Accepted"}"#.utf8)
    let value = try decoder.decode(Components.Schemas.CommandResultApi.self, from: raw)
    let result = try JSONSerialization.jsonObject(with: encoder.encode(value)) as! [String: Any]
    XCTAssertEqual(result["type"] as? String, "reset")
  }

  func testUnknownResponseUnionPreservesPayload() throws {
    let raw = Data(#"{"type":"somethingNew","detail":{"n":1}}"#.utf8)
    let value = try decoder.decode(Components.Schemas.CommandResultApi.self, from: raw)
    XCTAssertEqual(
      try JSONSerialization.jsonObject(with: encoder.encode(value)) as! NSDictionary,
      try JSONSerialization.jsonObject(with: raw) as! NSDictionary)
  }

  func testLocationPatchOmission() throws {
    let value = try decoder.decode(
      Components.Schemas.UpdateLocationRequest.self, from: Data("{}".utf8))
    XCTAssertEqual(
      try JSONSerialization.jsonObject(with: encoder.encode(value)) as! NSDictionary, [:])
  }

  func testLocationPatchExplicitNull() throws {
    let value = try decoder.decode(
      Components.Schemas.UpdateLocationRequest.self, from: Data(#"{"timeZone":null}"#.utf8))
    let result = try JSONSerialization.jsonObject(with: encoder.encode(value)) as! [String: Any]
    XCTAssertTrue(
      result["timeZone"] is NSNull, "An explicit null must not become an omitted field: \(result)")
  }

  func testLocationPatchValue() throws {
    let value = try decoder.decode(
      Components.Schemas.UpdateLocationRequest.self,
      from: Data(#"{"timeZone":"Europe/Stockholm"}"#.utf8))
    let result = try JSONSerialization.jsonObject(with: encoder.encode(value)) as! [String: Any]
    XCTAssertEqual(result["timeZone"] as? String, "Europe/Stockholm")
  }

  func testLocationPatchAddressIsRetained() throws {
    let raw = Data(#"{"address":{"line1":"Example Street 1","country":"SE"}}"#.utf8)
    let value = try decoder.decode(Components.Schemas.UpdateLocationRequest.self, from: raw)
    let result = try JSONSerialization.jsonObject(with: encoder.encode(value)) as! [String: Any]
    XCTAssertNotNil(result["address"], "A documented field must not disappear: \(result)")
  }

  func testNestedSettingsPatchExplicitNull() throws {
    let value = try decoder.decode(
      Components.Schemas.FractionSettingUpdate.self, from: Data(#"{"target":null}"#.utf8))
    let result = try JSONSerialization.jsonObject(with: encoder.encode(value)) as! [String: Any]
    XCTAssertTrue(
      result["target"] is NSNull, "Clearing a setting must encode target:null: \(result)")
  }

  func testUnknownRequestEnumIsRejected() throws {
    XCTAssertThrowsError(
      try decoder.decode(Components.Schemas.ComebackKind.self, from: Data("\"typo\"".utf8)))
  }

  func testSSEFramingPreservesFuturePayloadAndContinues() async throws {
    let body = HTTPBody(
      ": heartbeat\n\ndata: {\"type\":\"known\"}\n\ndata: {\"type\":\"future\"}\n\ndata: {\"type\":\"known-again\"}\n\nevent: revoked\ndata: {}\n\n"
    )
    var payloads: [String] = []
    var revoked = false
    for try await event in body.asDecodedServerSentEvents() {
      if event.event == "revoked" {
        revoked = true
        break
      }
      if let data = event.data { payloads.append(data) }
    }
    XCTAssertEqual(payloads.count, 3)
    XCTAssertEqual(payloads[1], #"{"type":"future"}"#)
    XCTAssertTrue(revoked)
  }
}
