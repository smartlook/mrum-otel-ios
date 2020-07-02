// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: opentelemetry/proto/common/v1/common.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019, OpenTelemetry Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// AnyValue is used to represent any type of attribute value. AnyValue may contain a
/// primitive value such as a string or integer or it may contain an arbitrary nested
/// object containing arrays, key-value lists and primitives.
public struct Opentelemetry_Proto_Common_V1_AnyValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The value is one of the listed fields. It is valid for all values to be unspecified
  /// in which case this AnyValue is considered to be "null".
  public var value: OneOf_Value? {
    get {return _storage._value}
    set {_uniqueStorage()._value = newValue}
  }

  public var stringValue: String {
    get {
      if case .stringValue(let v)? = _storage._value {return v}
      return String()
    }
    set {_uniqueStorage()._value = .stringValue(newValue)}
  }

  public var boolValue: Bool {
    get {
      if case .boolValue(let v)? = _storage._value {return v}
      return false
    }
    set {_uniqueStorage()._value = .boolValue(newValue)}
  }

  public var intValue: Int64 {
    get {
      if case .intValue(let v)? = _storage._value {return v}
      return 0
    }
    set {_uniqueStorage()._value = .intValue(newValue)}
  }

  public var doubleValue: Double {
    get {
      if case .doubleValue(let v)? = _storage._value {return v}
      return 0
    }
    set {_uniqueStorage()._value = .doubleValue(newValue)}
  }

  public var arrayValue: Opentelemetry_Proto_Common_V1_ArrayValue {
    get {
      if case .arrayValue(let v)? = _storage._value {return v}
      return Opentelemetry_Proto_Common_V1_ArrayValue()
    }
    set {_uniqueStorage()._value = .arrayValue(newValue)}
  }

  public var kvlistValue: Opentelemetry_Proto_Common_V1_KeyValueList {
    get {
      if case .kvlistValue(let v)? = _storage._value {return v}
      return Opentelemetry_Proto_Common_V1_KeyValueList()
    }
    set {_uniqueStorage()._value = .kvlistValue(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The value is one of the listed fields. It is valid for all values to be unspecified
  /// in which case this AnyValue is considered to be "null".
  public enum OneOf_Value: Equatable {
    case stringValue(String)
    case boolValue(Bool)
    case intValue(Int64)
    case doubleValue(Double)
    case arrayValue(Opentelemetry_Proto_Common_V1_ArrayValue)
    case kvlistValue(Opentelemetry_Proto_Common_V1_KeyValueList)

  #if !swift(>=4.1)
    public static func ==(lhs: Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value, rhs: Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value) -> Bool {
      switch (lhs, rhs) {
      case (.stringValue(let l), .stringValue(let r)): return l == r
      case (.boolValue(let l), .boolValue(let r)): return l == r
      case (.intValue(let l), .intValue(let r)): return l == r
      case (.doubleValue(let l), .doubleValue(let r)): return l == r
      case (.arrayValue(let l), .arrayValue(let r)): return l == r
      case (.kvlistValue(let l), .kvlistValue(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// ArrayValue is a list of AnyValue messages. We need ArrayValue as a message
/// since oneof in AnyValue does not allow repeated fields.
public struct Opentelemetry_Proto_Common_V1_ArrayValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Array of values. The array may be empty (contain 0 elements).
  public var values: [Opentelemetry_Proto_Common_V1_AnyValue] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// KeyValueList is a list of KeyValue messages. We need KeyValueList as a message
/// since `oneof` in AnyValue does not allow repeated fields. Everywhere else where we need
/// a list of KeyValue messages (e.g. in Span) we use `repeated KeyValue` directly to
/// avoid unnecessary extra wrapping (which slows down the protocol). The 2 approaches
/// are semantically equivalent.
public struct Opentelemetry_Proto_Common_V1_KeyValueList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A collection of key/value pairs of key-value pairs. The list may be empty (may
  /// contain 0 elements).
  public var values: [Opentelemetry_Proto_Common_V1_KeyValue] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// KeyValue is a key-value pair that is used to store Span attributes, Link
/// attributes, etc.
public struct Opentelemetry_Proto_Common_V1_KeyValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var key: String {
    get {return _storage._key}
    set {_uniqueStorage()._key = newValue}
  }

  public var value: Opentelemetry_Proto_Common_V1_AnyValue {
    get {return _storage._value ?? Opentelemetry_Proto_Common_V1_AnyValue()}
    set {_uniqueStorage()._value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  public var hasValue: Bool {return _storage._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  public mutating func clearValue() {_uniqueStorage()._value = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// StringKeyValue is a pair of key/value strings. This is the simpler (and faster) version
/// of KeyValue that only supports string values.
public struct Opentelemetry_Proto_Common_V1_StringKeyValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var key: String = String()

  public var value: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// InstrumentationLibrary is a message representing the instrumentation library information
/// such as the fully qualified name and version. 
public struct Opentelemetry_Proto_Common_V1_InstrumentationLibrary {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var name: String = String()

  public var version: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "opentelemetry.proto.common.v1"

extension Opentelemetry_Proto_Common_V1_AnyValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AnyValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "string_value"),
    2: .standard(proto: "bool_value"),
    3: .standard(proto: "int_value"),
    4: .standard(proto: "double_value"),
    5: .standard(proto: "array_value"),
    6: .standard(proto: "kvlist_value"),
  ]

  fileprivate class _StorageClass {
    var _value: Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _value = source._value
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1:
          if _storage._value != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._value = .stringValue(v)}
        case 2:
          if _storage._value != nil {try decoder.handleConflictingOneOf()}
          var v: Bool?
          try decoder.decodeSingularBoolField(value: &v)
          if let v = v {_storage._value = .boolValue(v)}
        case 3:
          if _storage._value != nil {try decoder.handleConflictingOneOf()}
          var v: Int64?
          try decoder.decodeSingularInt64Field(value: &v)
          if let v = v {_storage._value = .intValue(v)}
        case 4:
          if _storage._value != nil {try decoder.handleConflictingOneOf()}
          var v: Double?
          try decoder.decodeSingularDoubleField(value: &v)
          if let v = v {_storage._value = .doubleValue(v)}
        case 5:
          var v: Opentelemetry_Proto_Common_V1_ArrayValue?
          if let current = _storage._value {
            try decoder.handleConflictingOneOf()
            if case .arrayValue(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._value = .arrayValue(v)}
        case 6:
          var v: Opentelemetry_Proto_Common_V1_KeyValueList?
          if let current = _storage._value {
            try decoder.handleConflictingOneOf()
            if case .kvlistValue(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._value = .kvlistValue(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      switch _storage._value {
      case .stringValue(let v)?:
        try visitor.visitSingularStringField(value: v, fieldNumber: 1)
      case .boolValue(let v)?:
        try visitor.visitSingularBoolField(value: v, fieldNumber: 2)
      case .intValue(let v)?:
        try visitor.visitSingularInt64Field(value: v, fieldNumber: 3)
      case .doubleValue(let v)?:
        try visitor.visitSingularDoubleField(value: v, fieldNumber: 4)
      case .arrayValue(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      case .kvlistValue(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opentelemetry_Proto_Common_V1_AnyValue, rhs: Opentelemetry_Proto_Common_V1_AnyValue) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._value != rhs_storage._value {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opentelemetry_Proto_Common_V1_ArrayValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ArrayValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "values"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.values)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.values.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.values, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opentelemetry_Proto_Common_V1_ArrayValue, rhs: Opentelemetry_Proto_Common_V1_ArrayValue) -> Bool {
    if lhs.values != rhs.values {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opentelemetry_Proto_Common_V1_KeyValueList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".KeyValueList"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "values"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.values)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.values.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.values, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opentelemetry_Proto_Common_V1_KeyValueList, rhs: Opentelemetry_Proto_Common_V1_KeyValueList) -> Bool {
    if lhs.values != rhs.values {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opentelemetry_Proto_Common_V1_KeyValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".KeyValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "value"),
  ]

  fileprivate class _StorageClass {
    var _key: String = String()
    var _value: Opentelemetry_Proto_Common_V1_AnyValue? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
      _value = source._value
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._key)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._value)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._key.isEmpty {
        try visitor.visitSingularStringField(value: _storage._key, fieldNumber: 1)
      }
      if let v = _storage._value {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opentelemetry_Proto_Common_V1_KeyValue, rhs: Opentelemetry_Proto_Common_V1_KeyValue) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._key != rhs_storage._key {return false}
        if _storage._value != rhs_storage._value {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opentelemetry_Proto_Common_V1_StringKeyValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StringKeyValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.key)
      case 2: try decoder.decodeSingularStringField(value: &self.value)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opentelemetry_Proto_Common_V1_StringKeyValue, rhs: Opentelemetry_Proto_Common_V1_StringKeyValue) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Opentelemetry_Proto_Common_V1_InstrumentationLibrary: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InstrumentationLibrary"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.version)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.version.isEmpty {
      try visitor.visitSingularStringField(value: self.version, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Opentelemetry_Proto_Common_V1_InstrumentationLibrary, rhs: Opentelemetry_Proto_Common_V1_InstrumentationLibrary) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.version != rhs.version {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}