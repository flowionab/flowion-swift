import Foundation

/// An unknown JSON payload, including integers outside Double's exact range.
public enum JSONValue: Codable, Hashable, Sendable {
  case null
  case bool(Bool)
  case integer(Int64)
  case unsigned(UInt64)
  case decimal(Decimal)
  case string(String)
  case array([JSONValue])
  case object([String: JSONValue])

  public init(from decoder: any Decoder) throws {
    let c = try decoder.singleValueContainer()
    if c.decodeNil() {
      self = .null
    } else if let v = try? c.decode(Bool.self) {
      self = .bool(v)
    } else if let v = try? c.decode(String.self) {
      self = .string(v)
    } else if let v = try? c.decode(Int64.self) {
      self = .integer(v)
    } else if let v = try? c.decode(UInt64.self) {
      self = .unsigned(v)
    } else if let v = try? c.decode(Decimal.self) {
      self = .decimal(v)
    } else if let v = try? c.decode([JSONValue].self) {
      self = .array(v)
    } else {
      self = .object(try c.decode([String: JSONValue].self))
    }
  }
  public func encode(to encoder: any Encoder) throws {
    var c = encoder.singleValueContainer()
    switch self {
    case .null: try c.encodeNil()
    case .bool(let v): try c.encode(v)
    case .integer(let v): try c.encode(v)
    case .unsigned(let v): try c.encode(v)
    case .decimal(let v): try c.encode(v)
    case .string(let v): try c.encode(v)
    case .array(let v): try c.encode(v)
    case .object(let v): try c.encode(v)
    }
  }
  public var objectValue: [String: JSONValue]? { if case .object(let v) = self { v } else { nil } }
  public var stringValue: String? { if case .string(let v) = self { v } else { nil } }
}
