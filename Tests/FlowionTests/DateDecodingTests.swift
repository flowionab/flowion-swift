import Flowion
import Foundation
import HTTPTypes
import OpenAPIRuntime
import XCTest

/// Answers every request with one fixed JSON body.
private struct FixedTransport: ClientTransport {
  let body: String

  func send(_ request: HTTPRequest, body: HTTPBody?, baseURL: URL, operationID: String)
    async throws -> (HTTPResponse, HTTPBody?)
  {
    var fields = HTTPFields()
    fields[.contentType] = "application/json"
    return (HTTPResponse(status: .ok, headerFields: fields), HTTPBody(self.body))
  }
}

/// The server writes a timestamp with as many fractional digits as it has
/// (`2026-10-07T12:15:00.123456Z`) and none when the instant is whole
/// (`2026-10-07T12:15:00Z`): Rust's RFC 3339, from a Postgres `timestamptz`.
/// The runtime's default transcoder reads only the second form, so a client
/// built on it failed to read almost every answer that carries a date.
final class DateDecodingTests: XCTestCase {
  private func invitation(createdAt: String, expiresAt: String) -> String {
    """
    {"id":"6f0c1f3e-6a43-4b0e-9a38-0f2f2bd0c3a1","email":"sam@norrsken-el.se",\
    "createdAt":"\(createdAt)","expiresAt":"\(expiresAt)","pending":true,"policyBindings":[],\
    "organizationName":"Norrsken El AB","organizationSlug":"norrsken-el","matchesViewer":false}
    """
  }

  private func read(_ body: String) async throws -> Components.Schemas.GetInvitationResponse {
    let client = FlowionClient(
      token: { "token" }, transport: FixedTransport(body: body))
    return try await client.getInvitation(path: .init(token: "t")).ok.body.json
  }

  func testADateWithFractionalSecondsIsRead() async throws {
    let answer = try await read(
      invitation(createdAt: "2026-10-07T09:00:00.482113Z", expiresAt: "2026-10-14T09:00:00.5Z"))
    XCTAssertEqual(answer.value1.createdAt.timeIntervalSince1970, 1_791_363_600.482113, accuracy: 0.001)
    XCTAssertEqual(answer.value1.expiresAt.timeIntervalSince1970, 1_791_968_400.5, accuracy: 0.001)
  }

  func testADateOnTheWholeSecondIsStillRead() async throws {
    let answer = try await read(
      invitation(createdAt: "2026-10-07T09:00:00Z", expiresAt: "2026-10-14T09:00:00+00:00"))
    XCTAssertEqual(answer.value1.createdAt.timeIntervalSince1970, 1_791_363_600, accuracy: 0.001)
    XCTAssertEqual(answer.value1.expiresAt.timeIntervalSince1970, 1_791_968_400, accuracy: 0.001)
  }

  func testNanosecondsAsChronoWritesThemAreRead() async throws {
    let answer = try await read(
      invitation(createdAt: "2026-10-07T09:00:00.482113123Z", expiresAt: "2026-10-14T09:00:00Z"))
    XCTAssertEqual(answer.value1.createdAt.timeIntervalSince1970, 1_791_363_600.482, accuracy: 0.001)
  }

  func testAnythingElseIsStillRefused() async {
    do {
      _ = try await read(invitation(createdAt: "yesterday", expiresAt: "2026-10-14T09:00:00Z"))
      XCTFail("expected a failure")
    } catch let error as FlowionError {
      XCTAssertEqual(error.kind, .unexpected)
    } catch {
      XCTFail("\(error)")
    }
  }
}
