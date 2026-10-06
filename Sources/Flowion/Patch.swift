/// A JSON Merge Patch field. Omission leaves it unchanged; null clears it.
public enum Patch<Value: Codable & Hashable & Sendable>: Hashable, Sendable {
  case omitted
  case null
  case value(Value)
}

extension KeyedDecodingContainer {
  func decodePatch<Value: Codable & Hashable & Sendable>(
    _ type: Value.Type, forKey key: Key
  ) throws -> Patch<Value> {
    guard contains(key) else { return .omitted }
    if try decodeNil(forKey: key) { return .null }
    return .value(try decode(type, forKey: key))
  }
}
extension KeyedEncodingContainer {
  mutating func encodePatch<Value: Codable & Hashable & Sendable>(
    _ value: Patch<Value>, forKey key: Key
  ) throws {
    switch value {
    case .omitted: break
    case .null: try encodeNil(forKey: key)
    case .value(let value): try encode(value, forKey: key)
    }
  }
}
