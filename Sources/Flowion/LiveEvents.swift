import Foundation
import OpenAPIRuntime

/// Future event kinds retain their entire payload rather than losing fields.
public enum LiveEvent: Sendable {
  case known(Components.Schemas.LiveEventPayload)
  case unrecognized(JSONValue)
}

/// A lazy stream. Clean closure and revocation are ordinary terminal states.
public struct LiveEvents: AsyncSequence, Sendable {
  public typealias Element = LiveEvent
  public enum End: String, Sendable { case closed, revoked }
  public actor State {
    public private(set) var end: End?
    func finish(_ end: End) { self.end = end }
  }
  public let state = State()
  let open: @Sendable () async throws -> HTTPBody
  public var end: End? { get async { await state.end } }
  public func makeAsyncIterator() -> Iterator { Iterator(open: open, state: state) }

  public struct Iterator: AsyncIteratorProtocol {
    typealias Frames = ServerSentEventsDeserializationSequence<
      ServerSentEventsLineDeserializationSequence<HTTPBody>
    >
    let open: @Sendable () async throws -> HTTPBody
    let state: State
    var reader: Frames.AsyncIterator?
    var finished = false
    public mutating func next() async throws -> LiveEvent? {
      try Task.checkCancellation()
      if finished { return nil }
      if reader == nil { reader = try await open().asDecodedServerSentEvents().makeAsyncIterator() }
      while true {
        var iterator = reader!
        let event: ServerSentEvent?
        do { event = try await iterator.next() } catch {
          reader = nil
          finished = true
          if Task.isCancelled || error is CancellationError { throw CancellationError() }
          throw FlowionError(kind: .transport, message: String(describing: error))
        }
        reader = iterator
        guard let event else {
          reader = nil
          finished = true
          await state.finish(.closed)
          return nil
        }
        if event.event == "revoked" {
          reader = nil
          finished = true
          await state.finish(.revoked)
          return nil
        }
        guard let text = event.data, !text.isEmpty else { continue }
        do {
          let data = Data(text.utf8)
          let raw = try JSONDecoder().decode(JSONValue.self, from: data)
          guard let type = raw.objectValue?["type"]?.stringValue else {
            throw FlowionError(kind: .unexpected, message: "Live event has no type", body: raw)
          }
          if !Components.Schemas.LiveEventType(rawValue: type).isKnown { return .unrecognized(raw) }
          return .known(
            try JSONDecoder().decode(Components.Schemas.LiveEventPayload.self, from: data))
        } catch let error as FlowionError { throw error } catch {
          throw FlowionError(kind: .unexpected, message: "Invalid live event: \(error)")
        }
      }
    }
  }
}

extension FlowionClient {
  public func liveEvents(projectId: String) -> LiveEvents {
    LiveEvents(open: {
      let response = try await self.streamLiveEvents(
        path: .init(projectId: projectId),
        headers: .init(accept: [.init(contentType: .textEventStream)]))
      return try response.ok.body.textEventStream
    })
  }
}
