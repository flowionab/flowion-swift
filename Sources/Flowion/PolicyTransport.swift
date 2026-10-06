import Foundation
import HTTPTypes
import OpenAPIRuntime

public struct RateLimitInfo: Sendable, Equatable {
  public let limit: UInt64?
  public let remaining: UInt64?
  public let resetSeconds: UInt64?
  public let retryAfterSeconds: UInt64?

  init(_ headers: HTTPFields) {
    func whole(_ name: String) -> UInt64? {
      guard let raw = headers[HTTPField.Name(name)!]?.trimmingCharacters(in: .whitespaces),
        !raw.isEmpty, raw.utf8.allSatisfy({ $0 >= 48 && $0 <= 57 })
      else { return nil }
      return UInt64(raw)
    }
    limit = whole("RateLimit-Limit")
    remaining = whole("RateLimit-Remaining")
    resetSeconds = whole("RateLimit-Reset")
    retryAfterSeconds = whole("Retry-After")
  }
}

actor PolicyTransport: ClientTransport {
  let transport: any ClientTransport
  let token: FlowionClient.TokenProvider
  let mode: FlowionClient.Mode
  let retry: FlowionClient.RetryPolicy
  let sleep: FlowionClient.Sleep
  var lastRateLimit: RateLimitInfo?

  init(
    transport: any ClientTransport, token: @escaping FlowionClient.TokenProvider,
    mode: FlowionClient.Mode, retry: FlowionClient.RetryPolicy, sleep: @escaping FlowionClient.Sleep
  ) {
    self.transport = transport
    self.token = token
    self.mode = mode
    self.retry = retry
    self.sleep = sleep
  }

  func send(
    _ original: HTTPRequest, body: HTTPBody?, baseURL: URL,
    operationID: String
  ) async throws -> (HTTPResponse, HTTPBody?) {
    var request = original
    try Task.checkCancellation()
    request.headerFields[.authorization] = "Bearer \(try await token())"
    request.headerFields[HTTPField.Name("Api-Version")!] = FlowionContract.apiVersion
    if mode == .sandbox { request.headerFields[HTTPField.Name("X-Flowion-Mode")!] = "sandbox" }
    // A single-use body cannot safely be replayed. Generated JSON bodies
    // are replayable; streaming uploads get one attempt, even on 429.
    let canRetry = body == nil || body?.iterationBehavior == .multiple
    for attempt in 1...retry.maxAttempts {
      try Task.checkCancellation()
      let response: HTTPResponse
      let responseBody: HTTPBody?
      do {
        (response, responseBody) = try await transport.send(
          request, body: body, baseURL: baseURL, operationID: operationID)
      } catch is CancellationError { throw CancellationError() } catch {
        if Task.isCancelled { throw CancellationError() }
        throw FlowionError(kind: .transport, message: String(describing: error))
      }
      let rate = RateLimitInfo(response.headerFields)
      lastRateLimit = rate
      if (200..<400).contains(response.status.code) { return (response, responseBody) }
      let wait = rate.retryAfterSeconds ?? 1
      if response.status.code == 429 && canRetry && attempt < retry.maxAttempts
        && wait <= retry.maxWaitSeconds
      {
        // Consume a bounded error body before retrying to release its
        // transport resources; a body-read failure is never retried.
        if let responseBody {
          do { _ = try await Data(collecting: responseBody, upTo: 1_048_576) } catch {
            if Task.isCancelled || error is CancellationError { throw CancellationError() }
            throw FlowionError(kind: .transport, message: String(describing: error))
          }
        }
        try await sleep(wait)
        continue
      }
      let data: Data
      do {
        data =
          try await responseBody.mapAsync { try await Data(collecting: $0, upTo: 1_048_576) }
          ?? Data()
      } catch {
        if Task.isCancelled || error is CancellationError { throw CancellationError() }
        throw FlowionError(kind: .transport, message: String(describing: error))
      }
      let payload =
        (try? JSONDecoder().decode(JSONValue.self, from: data))
        ?? .string(String(decoding: data, as: UTF8.self))
      let fields = payload.objectValue
      let code = fields?["error"]?.stringValue
      throw FlowionError(
        kind: response.status.code == 429 ? .rateLimited : (code == nil ? .unexpected : .api),
        status: response.status.code, code: code,
        requestId: fields?["requestId"]?.stringValue
          ?? response.headerFields[HTTPField.Name("X-Request-Id")!],
        retryAfterSeconds: rate.retryAfterSeconds,
        message: fields?["message"]?.stringValue ?? "HTTP \(response.status.code)", body: payload
      )
    }
    throw FlowionError(kind: .unexpected, message: "Retry policy exhausted")
  }
}

extension Optional {
  fileprivate func mapAsync<T>(_ transform: (Wrapped) async throws -> T) async rethrows -> T? {
    switch self {
    case .none: return nil
    case .some(let value): return try await transform(value)
    }
  }
}
