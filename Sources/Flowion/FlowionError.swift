import Foundation
import OpenAPIRuntime

/// An API failure with enough context to correlate it with server telemetry.
public struct FlowionError: Error, Sendable, LocalizedError {
  public enum Kind: String, Sendable { case transport, rateLimited, api, unexpected }
  public let kind: Kind
  public let status: Int?
  public let code: String?
  public let requestId: String?
  public let retryAfterSeconds: UInt64?
  public let message: String
  public let body: JSONValue?
  public var errorDescription: String? { message }

  public init(
    kind: Kind, status: Int? = nil, code: String? = nil,
    requestId: String? = nil, retryAfterSeconds: UInt64? = nil,
    message: String, body: JSONValue? = nil
  ) {
    self.kind = kind
    self.status = status
    self.code = code
    self.requestId = requestId
    self.retryAfterSeconds = retryAfterSeconds
    self.message = message
    self.body = body
  }
}

extension FlowionClient {
  static func failure(_ error: any Error) -> any Error {
    if let client = error as? ClientError { return failure(client.underlyingError) }
    if error is CancellationError { return error }
    if let error = error as? FlowionError { return error }
    return FlowionError(kind: .unexpected, message: String(describing: error))
  }
}
