import Foundation
import OpenAPIRuntime

/// Dates as the Flowion API writes them: RFC 3339 with as many fractional
/// digits as the instant has (`2026-10-07T12:15:00.123456Z`), and none when it
/// falls on a whole second (`2026-10-07T12:15:00Z`). The runtime's own
/// transcoders each take only one of the two, so a client built on either
/// failed to read most answers that carry a date.
struct ServerDateTranscoder: DateTranscoder {
  private let fractional: ISO8601DateTranscoder = .iso8601WithFractionalSeconds
  private let whole: ISO8601DateTranscoder = .iso8601

  func encode(_ date: Date) throws -> String {
    try fractional.encode(date)
  }

  func decode(_ dateString: String) throws -> Date {
    if let date = try? fractional.decode(dateString) { return date }
    return try whole.decode(dateString)
  }
}
