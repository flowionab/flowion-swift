public struct Page<Item: Sendable>: Sendable {
  public let data: [Item]
  public let nextCursor: String?
  public init(data: [Item], nextCursor: String? = nil) {
    self.data = data
    self.nextCursor = nextCursor
  }
}

/// Requests another page only when iteration passes the last item of this one.
public struct PaginatedItems<Item: Sendable>: AsyncSequence, Sendable {
  public typealias Element = Item
  public typealias Fetch = @Sendable (String?) async throws -> Page<Item>
  private let fetch: Fetch
  public init(fetch: @escaping Fetch) { self.fetch = fetch }
  public func makeAsyncIterator() -> Iterator { Iterator(fetch: fetch) }

  public struct Iterator: AsyncIteratorProtocol {
    let fetch: Fetch
    var cursor: String?
    var page: [Item] = []
    var index = 0
    var started = false
    var seen = Set<String>()
    public mutating func next() async throws -> Item? {
      try Task.checkCancellation()
      while index == page.count {
        if started && cursor == nil { return nil }
        if let cursor, !seen.insert(cursor).inserted {
          throw FlowionError(kind: .unexpected, message: "Pagination returned a repeated cursor")
        }
        let result = try await fetch(cursor)
        page = result.data
        cursor = result.nextCursor
        index = 0
        started = true
      }
      defer { index += 1 }
      return page[index]
    }
  }
}
