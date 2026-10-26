import Foundation
import OpenAPIRuntime
import OpenAPIURLSession

/// The Flowion REST client. Sign-in and credential storage belong to the app.
public struct FlowionClient: Sendable {
  public enum Mode: String, Sendable { case live, sandbox }
  public typealias TokenProvider = @Sendable () async throws -> String
  public typealias Sleep = @Sendable (UInt64) async throws -> Void

  /// Only HTTP 429 is retried. Counts include the first attempt.
  public struct RetryPolicy: Sendable {
    public let maxAttempts: Int
    public let maxWaitSeconds: UInt64
    public init(maxAttempts: Int = 4, maxWaitSeconds: UInt64 = 30) {
      self.maxAttempts = max(1, maxAttempts)
      self.maxWaitSeconds = maxWaitSeconds
    }
  }

  let api: Client
  let policy: PolicyTransport

  public init(
    baseURL: URL = URL(string: "https://api.flowion.io")!,
    token: @escaping TokenProvider,
    mode: Mode = .live,
    retry: RetryPolicy = .init(),
    transport: any ClientTransport = URLSessionTransport(),
    sleep: @escaping Sleep = { try await Task.sleep(for: .seconds(Double($0))) }
  ) {
    let policy = PolicyTransport(
      transport: transport, token: token, mode: mode, retry: retry, sleep: sleep)
    self.policy = policy
    self.api = Client(
      serverURL: baseURL, configuration: .init(dateTranscoder: ServerDateTranscoder()),
      transport: policy)
  }

  /// Headers from the most recently received response, including failures.
  public var lastRateLimit: RateLimitInfo? { get async { await policy.lastRateLimit } }
}
