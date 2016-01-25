// © 2015 George King. Permission to use this file is granted in license-qk.txt.
// This file is generated by gen-vec.py.
  
import Darwin
import simd


public typealias V2S = float2

extension V2S : VecType2, FloatVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = F32
  typealias FloatType = F32
  typealias VSType = V2S
  typealias VDType = V2D
  typealias VU8Type = V2U8
  init(_ v: V2D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V2I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V2U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 2 {
      throw Json.Error.ExcessEl(index: 2, exp: V2S.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1))
  }

  static let zero = V2S(0, 0)
  static let unitX = V2S(1, 0)
  static let unitY = V2S(0, 1)
  public var description: String { return "V2S(\(x), \(y))" }
  var vs: V2S { return V2S(F32(x), F32(y)) }
  var vd: V2D { return V2D(F64(x), F64(y)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var l: Scalar {
    get { return x }
    set { x = newValue }
  }
  var a: Scalar {
    get { return y }
    set { y = newValue }
  }

  var allNormal: Bool { return x.isNormal && y.isNormal }
  var allFinite: Bool { return x.isFinite && y.isFinite }
  var allZero: Bool { return x.isNormal && y.isNormal }
  var anySubnormal: Bool { return x.isSubnormal || y.isSubnormal}
  var anyInfite: Bool { return x.isInfinite || y.isInfinite}
  var anyNaN: Bool { return x.isNaN || y.isNaN}
  var norm: V2S { return self / self.len }
  var clampToUnit: V2S { return V2S(clamp(x, min: 0, max: 1), clamp(y, min: 0, max: 1)) }
  var toU8Pixel: VU8Type { return VU8Type(U8(clamp(x * 255, min: 0, max: 255)), U8(clamp(y * 255, min: 0, max: 255))) }
  var heading: Scalar { return atan2(y, x) }

  func dot(b: V2S) -> Scalar { return (x * b.x) + (y * b.y) }
  func angle(b: V2S) -> Scalar { return acos(self.dot(b) / (self.len * b.len)) }
  func lerp(b: V2S, _ t: Scalar) -> V2S { return self * (1 - t) + b * t }

}

func +(a: V2S, b: V2S) -> V2S { return V2S(a.x + b.x, a.y + b.y) }
func -(a: V2S, b: V2S) -> V2S { return V2S(a.x - b.x, a.y - b.y) }
func *(a: V2S, b: V2S) -> V2S { return V2S(a.x * b.x, a.y * b.y) }
func /(a: V2S, b: V2S) -> V2S { return V2S(a.x / b.x, a.y / b.y) }
func +(a: V2S, s: F32) -> V2S { return V2S(a.x + s, a.y + s) }
func -(a: V2S, s: F32) -> V2S { return V2S(a.x - s, a.y - s) }
func *(a: V2S, s: F32) -> V2S { return V2S(a.x * s, a.y * s) }
func /(a: V2S, s: F32) -> V2S { return V2S(a.x / s, a.y / s) }

public func ==(a: V2S, b: V2S) -> Bool {
  return a.x == b.x && a.y == b.y
}


public typealias V2D = double2

extension V2D : VecType2, FloatVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = F64
  typealias FloatType = F64
  typealias VSType = V2S
  typealias VDType = V2D
  typealias VU8Type = V2U8
  init(_ v: V2S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V2I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V2U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 2 {
      throw Json.Error.ExcessEl(index: 2, exp: V2D.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1))
  }

  static let zero = V2D(0, 0)
  static let unitX = V2D(1, 0)
  static let unitY = V2D(0, 1)
  public var description: String { return "V2D(\(x), \(y))" }
  var vs: V2S { return V2S(F32(x), F32(y)) }
  var vd: V2D { return V2D(F64(x), F64(y)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var l: Scalar {
    get { return x }
    set { x = newValue }
  }
  var a: Scalar {
    get { return y }
    set { y = newValue }
  }

  var allNormal: Bool { return x.isNormal && y.isNormal }
  var allFinite: Bool { return x.isFinite && y.isFinite }
  var allZero: Bool { return x.isNormal && y.isNormal }
  var anySubnormal: Bool { return x.isSubnormal || y.isSubnormal}
  var anyInfite: Bool { return x.isInfinite || y.isInfinite}
  var anyNaN: Bool { return x.isNaN || y.isNaN}
  var norm: V2D { return self / self.len }
  var clampToUnit: V2D { return V2D(clamp(x, min: 0, max: 1), clamp(y, min: 0, max: 1)) }
  var toU8Pixel: VU8Type { return VU8Type(U8(clamp(x * 255, min: 0, max: 255)), U8(clamp(y * 255, min: 0, max: 255))) }
  var heading: Scalar { return atan2(y, x) }

  func dot(b: V2D) -> Scalar { return (x * b.x) + (y * b.y) }
  func angle(b: V2D) -> Scalar { return acos(self.dot(b) / (self.len * b.len)) }
  func lerp(b: V2D, _ t: Scalar) -> V2D { return self * (1 - t) + b * t }

}

func +(a: V2D, b: V2D) -> V2D { return V2D(a.x + b.x, a.y + b.y) }
func -(a: V2D, b: V2D) -> V2D { return V2D(a.x - b.x, a.y - b.y) }
func *(a: V2D, b: V2D) -> V2D { return V2D(a.x * b.x, a.y * b.y) }
func /(a: V2D, b: V2D) -> V2D { return V2D(a.x / b.x, a.y / b.y) }
func +(a: V2D, s: F64) -> V2D { return V2D(a.x + s, a.y + s) }
func -(a: V2D, s: F64) -> V2D { return V2D(a.x - s, a.y - s) }
func *(a: V2D, s: F64) -> V2D { return V2D(a.x * s, a.y * s) }
func /(a: V2D, s: F64) -> V2D { return V2D(a.x / s, a.y / s) }

public func ==(a: V2D, b: V2D) -> Bool {
  return a.x == b.x && a.y == b.y
}


public struct V2I : VecType2, IntVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = Int
  typealias FloatType = F64
  typealias VSType = V2S
  typealias VDType = V2D
  typealias VU8Type = V2U8
  var x: Scalar
  var y: Scalar
  init(_ x: Scalar, _ y: Scalar) {
    self.x = x
    self.y = y
  }
  init() { self.init(0, 0) }
  init(_ v: V2S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V2D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V2U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 2 {
      throw Json.Error.ExcessEl(index: 2, exp: V2I.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1))
  }

  static let zero = V2I(0, 0)
  static let unitX = V2I(1, 0)
  static let unitY = V2I(0, 1)
  public var description: String { return "V2I(\(x), \(y))" }
  var vs: V2S { return V2S(F32(x), F32(y)) }
  var vd: V2D { return V2D(F64(x), F64(y)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var l: Scalar {
    get { return x }
    set { x = newValue }
  }
  var a: Scalar {
    get { return y }
    set { y = newValue }
  }
}

func +(a: V2I, b: V2I) -> V2I { return V2I(a.x + b.x, a.y + b.y) }
func -(a: V2I, b: V2I) -> V2I { return V2I(a.x - b.x, a.y - b.y) }
func *(a: V2I, b: V2I) -> V2I { return V2I(a.x * b.x, a.y * b.y) }
func /(a: V2I, b: V2I) -> V2I { return V2I(a.x / b.x, a.y / b.y) }
func +(a: V2I, s: Int) -> V2I { return V2I(a.x + s, a.y + s) }
func -(a: V2I, s: Int) -> V2I { return V2I(a.x - s, a.y - s) }
func *(a: V2I, s: Int) -> V2I { return V2I(a.x * s, a.y * s) }
func /(a: V2I, s: Int) -> V2I { return V2I(a.x / s, a.y / s) }

public func ==(a: V2I, b: V2I) -> Bool {
  return a.x == b.x && a.y == b.y
}


public struct V2U8 : VecType2, IntVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = U8
  typealias FloatType = F32
  typealias VSType = V2S
  typealias VDType = V2D
  typealias VU8Type = V2U8
  var x: Scalar
  var y: Scalar
  init(_ x: Scalar, _ y: Scalar) {
    self.x = x
    self.y = y
  }
  init() { self.init(0, 0) }
  init(_ v: V2S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V2D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V2I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V3U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y))
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 2 {
      throw Json.Error.ExcessEl(index: 2, exp: V2U8.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1))
  }

  static let zero = V2U8(0, 0)
  static let unitX = V2U8(1, 0)
  static let unitY = V2U8(0, 1)
  public var description: String { return "V2U8(\(x), \(y))" }
  var vs: V2S { return V2S(F32(x), F32(y)) }
  var vd: V2D { return V2D(F64(x), F64(y)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var l: Scalar {
    get { return x }
    set { x = newValue }
  }
  var a: Scalar {
    get { return y }
    set { y = newValue }
  }
  var toSPixel: VSType { return VSType(F32(x) / F32(0xFF), F32(y) / F32(0xFF)) }
}

func +(a: V2U8, b: V2U8) -> V2U8 { return V2U8(a.x + b.x, a.y + b.y) }
func -(a: V2U8, b: V2U8) -> V2U8 { return V2U8(a.x - b.x, a.y - b.y) }
func *(a: V2U8, b: V2U8) -> V2U8 { return V2U8(a.x * b.x, a.y * b.y) }
func /(a: V2U8, b: V2U8) -> V2U8 { return V2U8(a.x / b.x, a.y / b.y) }
func +(a: V2U8, s: U8) -> V2U8 { return V2U8(a.x + s, a.y + s) }
func -(a: V2U8, s: U8) -> V2U8 { return V2U8(a.x - s, a.y - s) }
func *(a: V2U8, s: U8) -> V2U8 { return V2U8(a.x * s, a.y * s) }
func /(a: V2U8, s: U8) -> V2U8 { return V2U8(a.x / s, a.y / s) }

public func ==(a: V2U8, b: V2U8) -> Bool {
  return a.x == b.x && a.y == b.y
}


public typealias V3S = float3

extension V3S : VecType3, FloatVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = F32
  typealias FloatType = F32
  typealias VSType = V3S
  typealias VDType = V3D
  typealias VU8Type = V3U8
  init(_ v: V3D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V3I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V3U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V2S, _ s: Scalar) {
    self.init(v.x, v.y, s)
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 3 {
      throw Json.Error.ExcessEl(index: 3, exp: V3S.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1), try jsonArray.el(2))
  }

  static let zero = V3S(0, 0, 0)
  static let unitX = V3S(1, 0, 0)
  static let unitY = V3S(0, 1, 0)
  static let unitZ = V3S(0, 0, 1)
  public var description: String { return "V3S(\(x), \(y), \(z))" }
  var vs: V3S { return V3S(F32(x), F32(y), F32(z)) }
  var vd: V3D { return V3D(F64(x), F64(y), F64(z)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr + FloatType(z).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var r: Scalar {
    get { return x }
    set { x = newValue }
  }
  var g: Scalar {
    get { return y }
    set { y = newValue }
  }
  var b: Scalar {
    get { return z }
    set { z = newValue }
  }

  var allNormal: Bool { return x.isNormal && y.isNormal && z.isNormal }
  var allFinite: Bool { return x.isFinite && y.isFinite && z.isFinite }
  var allZero: Bool { return x.isNormal && y.isNormal && z.isNormal }
  var anySubnormal: Bool { return x.isSubnormal || y.isSubnormal || z.isSubnormal}
  var anyInfite: Bool { return x.isInfinite || y.isInfinite || z.isInfinite}
  var anyNaN: Bool { return x.isNaN || y.isNaN || z.isNaN}
  var norm: V3S { return self / self.len }
  var clampToUnit: V3S { return V3S(clamp(x, min: 0, max: 1), clamp(y, min: 0, max: 1), clamp(z, min: 0, max: 1)) }
  var toU8Pixel: VU8Type { return VU8Type(U8(clamp(x * 255, min: 0, max: 255)), U8(clamp(y * 255, min: 0, max: 255)), U8(clamp(z * 255, min: 0, max: 255))) }
  var heading: Scalar { return atan2(y, x) }

  func dot(b: V3S) -> Scalar { return (x * b.x) + (y * b.y) + (z * b.z) }
  func angle(b: V3S) -> Scalar { return acos(self.dot(b) / (self.len * b.len)) }
  func lerp(b: V3S, _ t: Scalar) -> V3S { return self * (1 - t) + b * t }

  func cross(b: V3S) -> V3S { return V3S(
  y * b.z - z * b.y,
  z * b.x - x * b.z,
  x * b.y - y * b.x
)}

}

func +(a: V3S, b: V3S) -> V3S { return V3S(a.x + b.x, a.y + b.y, a.z + b.z) }
func -(a: V3S, b: V3S) -> V3S { return V3S(a.x - b.x, a.y - b.y, a.z - b.z) }
func *(a: V3S, b: V3S) -> V3S { return V3S(a.x * b.x, a.y * b.y, a.z * b.z) }
func /(a: V3S, b: V3S) -> V3S { return V3S(a.x / b.x, a.y / b.y, a.z / b.z) }
func +(a: V3S, s: F32) -> V3S { return V3S(a.x + s, a.y + s, a.z + s) }
func -(a: V3S, s: F32) -> V3S { return V3S(a.x - s, a.y - s, a.z - s) }
func *(a: V3S, s: F32) -> V3S { return V3S(a.x * s, a.y * s, a.z * s) }
func /(a: V3S, s: F32) -> V3S { return V3S(a.x / s, a.y / s, a.z / s) }

public func ==(a: V3S, b: V3S) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}


public typealias V3D = double3

extension V3D : VecType3, FloatVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = F64
  typealias FloatType = F64
  typealias VSType = V3S
  typealias VDType = V3D
  typealias VU8Type = V3U8
  init(_ v: V3S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V3I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V3U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V2D, _ s: Scalar) {
    self.init(v.x, v.y, s)
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 3 {
      throw Json.Error.ExcessEl(index: 3, exp: V3D.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1), try jsonArray.el(2))
  }

  static let zero = V3D(0, 0, 0)
  static let unitX = V3D(1, 0, 0)
  static let unitY = V3D(0, 1, 0)
  static let unitZ = V3D(0, 0, 1)
  public var description: String { return "V3D(\(x), \(y), \(z))" }
  var vs: V3S { return V3S(F32(x), F32(y), F32(z)) }
  var vd: V3D { return V3D(F64(x), F64(y), F64(z)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr + FloatType(z).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var r: Scalar {
    get { return x }
    set { x = newValue }
  }
  var g: Scalar {
    get { return y }
    set { y = newValue }
  }
  var b: Scalar {
    get { return z }
    set { z = newValue }
  }

  var allNormal: Bool { return x.isNormal && y.isNormal && z.isNormal }
  var allFinite: Bool { return x.isFinite && y.isFinite && z.isFinite }
  var allZero: Bool { return x.isNormal && y.isNormal && z.isNormal }
  var anySubnormal: Bool { return x.isSubnormal || y.isSubnormal || z.isSubnormal}
  var anyInfite: Bool { return x.isInfinite || y.isInfinite || z.isInfinite}
  var anyNaN: Bool { return x.isNaN || y.isNaN || z.isNaN}
  var norm: V3D { return self / self.len }
  var clampToUnit: V3D { return V3D(clamp(x, min: 0, max: 1), clamp(y, min: 0, max: 1), clamp(z, min: 0, max: 1)) }
  var toU8Pixel: VU8Type { return VU8Type(U8(clamp(x * 255, min: 0, max: 255)), U8(clamp(y * 255, min: 0, max: 255)), U8(clamp(z * 255, min: 0, max: 255))) }
  var heading: Scalar { return atan2(y, x) }

  func dot(b: V3D) -> Scalar { return (x * b.x) + (y * b.y) + (z * b.z) }
  func angle(b: V3D) -> Scalar { return acos(self.dot(b) / (self.len * b.len)) }
  func lerp(b: V3D, _ t: Scalar) -> V3D { return self * (1 - t) + b * t }

  func cross(b: V3D) -> V3D { return V3D(
  y * b.z - z * b.y,
  z * b.x - x * b.z,
  x * b.y - y * b.x
)}

}

func +(a: V3D, b: V3D) -> V3D { return V3D(a.x + b.x, a.y + b.y, a.z + b.z) }
func -(a: V3D, b: V3D) -> V3D { return V3D(a.x - b.x, a.y - b.y, a.z - b.z) }
func *(a: V3D, b: V3D) -> V3D { return V3D(a.x * b.x, a.y * b.y, a.z * b.z) }
func /(a: V3D, b: V3D) -> V3D { return V3D(a.x / b.x, a.y / b.y, a.z / b.z) }
func +(a: V3D, s: F64) -> V3D { return V3D(a.x + s, a.y + s, a.z + s) }
func -(a: V3D, s: F64) -> V3D { return V3D(a.x - s, a.y - s, a.z - s) }
func *(a: V3D, s: F64) -> V3D { return V3D(a.x * s, a.y * s, a.z * s) }
func /(a: V3D, s: F64) -> V3D { return V3D(a.x / s, a.y / s, a.z / s) }

public func ==(a: V3D, b: V3D) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}


public struct V3I : VecType3, IntVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = Int
  typealias FloatType = F64
  typealias VSType = V3S
  typealias VDType = V3D
  typealias VU8Type = V3U8
  var x: Scalar
  var y: Scalar
  var z: Scalar
  init(_ x: Scalar, _ y: Scalar, _ z: Scalar) {
    self.x = x
    self.y = y
    self.z = z
  }
  init() { self.init(0, 0, 0) }
  init(_ v: V3S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V3D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V3U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V2I, _ s: Scalar) {
    self.init(v.x, v.y, s)
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 3 {
      throw Json.Error.ExcessEl(index: 3, exp: V3I.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1), try jsonArray.el(2))
  }

  static let zero = V3I(0, 0, 0)
  static let unitX = V3I(1, 0, 0)
  static let unitY = V3I(0, 1, 0)
  static let unitZ = V3I(0, 0, 1)
  public var description: String { return "V3I(\(x), \(y), \(z))" }
  var vs: V3S { return V3S(F32(x), F32(y), F32(z)) }
  var vd: V3D { return V3D(F64(x), F64(y), F64(z)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr + FloatType(z).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var r: Scalar {
    get { return x }
    set { x = newValue }
  }
  var g: Scalar {
    get { return y }
    set { y = newValue }
  }
  var b: Scalar {
    get { return z }
    set { z = newValue }
  }
}

func +(a: V3I, b: V3I) -> V3I { return V3I(a.x + b.x, a.y + b.y, a.z + b.z) }
func -(a: V3I, b: V3I) -> V3I { return V3I(a.x - b.x, a.y - b.y, a.z - b.z) }
func *(a: V3I, b: V3I) -> V3I { return V3I(a.x * b.x, a.y * b.y, a.z * b.z) }
func /(a: V3I, b: V3I) -> V3I { return V3I(a.x / b.x, a.y / b.y, a.z / b.z) }
func +(a: V3I, s: Int) -> V3I { return V3I(a.x + s, a.y + s, a.z + s) }
func -(a: V3I, s: Int) -> V3I { return V3I(a.x - s, a.y - s, a.z - s) }
func *(a: V3I, s: Int) -> V3I { return V3I(a.x * s, a.y * s, a.z * s) }
func /(a: V3I, s: Int) -> V3I { return V3I(a.x / s, a.y / s, a.z / s) }

public func ==(a: V3I, b: V3I) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}


public struct V3U8 : VecType3, IntVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = U8
  typealias FloatType = F32
  typealias VSType = V3S
  typealias VDType = V3D
  typealias VU8Type = V3U8
  var x: Scalar
  var y: Scalar
  var z: Scalar
  init(_ x: Scalar, _ y: Scalar, _ z: Scalar) {
    self.x = x
    self.y = y
    self.z = z
  }
  init() { self.init(0, 0, 0) }
  init(_ v: V3S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V3D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V3I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z))
  }
  init(_ v: V2U8, _ s: Scalar) {
    self.init(v.x, v.y, s)
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 3 {
      throw Json.Error.ExcessEl(index: 3, exp: V3U8.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1), try jsonArray.el(2))
  }

  static let zero = V3U8(0, 0, 0)
  static let unitX = V3U8(1, 0, 0)
  static let unitY = V3U8(0, 1, 0)
  static let unitZ = V3U8(0, 0, 1)
  public var description: String { return "V3U8(\(x), \(y), \(z))" }
  var vs: V3S { return V3S(F32(x), F32(y), F32(z)) }
  var vd: V3D { return V3D(F64(x), F64(y), F64(z)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr + FloatType(z).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var r: Scalar {
    get { return x }
    set { x = newValue }
  }
  var g: Scalar {
    get { return y }
    set { y = newValue }
  }
  var b: Scalar {
    get { return z }
    set { z = newValue }
  }
  var toSPixel: VSType { return VSType(F32(x) / F32(0xFF), F32(y) / F32(0xFF), F32(z) / F32(0xFF)) }
}

func +(a: V3U8, b: V3U8) -> V3U8 { return V3U8(a.x + b.x, a.y + b.y, a.z + b.z) }
func -(a: V3U8, b: V3U8) -> V3U8 { return V3U8(a.x - b.x, a.y - b.y, a.z - b.z) }
func *(a: V3U8, b: V3U8) -> V3U8 { return V3U8(a.x * b.x, a.y * b.y, a.z * b.z) }
func /(a: V3U8, b: V3U8) -> V3U8 { return V3U8(a.x / b.x, a.y / b.y, a.z / b.z) }
func +(a: V3U8, s: U8) -> V3U8 { return V3U8(a.x + s, a.y + s, a.z + s) }
func -(a: V3U8, s: U8) -> V3U8 { return V3U8(a.x - s, a.y - s, a.z - s) }
func *(a: V3U8, s: U8) -> V3U8 { return V3U8(a.x * s, a.y * s, a.z * s) }
func /(a: V3U8, s: U8) -> V3U8 { return V3U8(a.x / s, a.y / s, a.z / s) }

public func ==(a: V3U8, b: V3U8) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}


public typealias V4S = float4

extension V4S : VecType4, FloatVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = F32
  typealias FloatType = F32
  typealias VSType = V4S
  typealias VDType = V4D
  typealias VU8Type = V4U8
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V3S, _ s: Scalar) {
    self.init(v.x, v.y, v.z, s)
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 4 {
      throw Json.Error.ExcessEl(index: 4, exp: V4S.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1), try jsonArray.el(2), try jsonArray.el(3))
  }

  static let zero = V4S(0, 0, 0, 0)
  static let unitX = V4S(1, 0, 0, 0)
  static let unitY = V4S(0, 1, 0, 0)
  static let unitZ = V4S(0, 0, 1, 0)
  static let unitW = V4S(0, 0, 0, 1)
  public var description: String { return "V4S(\(x), \(y), \(z), \(w))" }
  var vs: V4S { return V4S(F32(x), F32(y), F32(z), F32(w)) }
  var vd: V4D { return V4D(F64(x), F64(y), F64(z), F64(w)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr + FloatType(z).sqr + FloatType(w).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var r: Scalar {
    get { return x }
    set { x = newValue }
  }
  var g: Scalar {
    get { return y }
    set { y = newValue }
  }
  var b: Scalar {
    get { return z }
    set { z = newValue }
  }
  var a: Scalar {
    get { return w }
    set { w = newValue }
  }

  var allNormal: Bool { return x.isNormal && y.isNormal && z.isNormal && w.isNormal }
  var allFinite: Bool { return x.isFinite && y.isFinite && z.isFinite && w.isFinite }
  var allZero: Bool { return x.isNormal && y.isNormal && z.isNormal && w.isNormal }
  var anySubnormal: Bool { return x.isSubnormal || y.isSubnormal || z.isSubnormal || w.isSubnormal}
  var anyInfite: Bool { return x.isInfinite || y.isInfinite || z.isInfinite || w.isInfinite}
  var anyNaN: Bool { return x.isNaN || y.isNaN || z.isNaN || w.isNaN}
  var norm: V4S { return self / self.len }
  var clampToUnit: V4S { return V4S(clamp(x, min: 0, max: 1), clamp(y, min: 0, max: 1), clamp(z, min: 0, max: 1), clamp(w, min: 0, max: 1)) }
  var toU8Pixel: VU8Type { return VU8Type(U8(clamp(x * 255, min: 0, max: 255)), U8(clamp(y * 255, min: 0, max: 255)), U8(clamp(z * 255, min: 0, max: 255)), U8(clamp(w * 255, min: 0, max: 255))) }
  var heading: Scalar { return atan2(y, x) }

  func dot(b: V4S) -> Scalar { return (x * b.x) + (y * b.y) + (z * b.z) + (w * b.w) }
  func angle(b: V4S) -> Scalar { return acos(self.dot(b) / (self.len * b.len)) }
  func lerp(b: V4S, _ t: Scalar) -> V4S { return self * (1 - t) + b * t }

  func cross(b: V4S) -> V4S { return V4S(
  y * b.z - z * b.y,
  z * b.x - x * b.z,
  x * b.y - y * b.x,
  0
)}

}

func +(a: V4S, b: V4S) -> V4S { return V4S(a.x + b.x, a.y + b.y, a.z + b.z, a.w + b.w) }
func -(a: V4S, b: V4S) -> V4S { return V4S(a.x - b.x, a.y - b.y, a.z - b.z, a.w - b.w) }
func *(a: V4S, b: V4S) -> V4S { return V4S(a.x * b.x, a.y * b.y, a.z * b.z, a.w * b.w) }
func /(a: V4S, b: V4S) -> V4S { return V4S(a.x / b.x, a.y / b.y, a.z / b.z, a.w / b.w) }
func +(a: V4S, s: F32) -> V4S { return V4S(a.x + s, a.y + s, a.z + s, a.w + s) }
func -(a: V4S, s: F32) -> V4S { return V4S(a.x - s, a.y - s, a.z - s, a.w - s) }
func *(a: V4S, s: F32) -> V4S { return V4S(a.x * s, a.y * s, a.z * s, a.w * s) }
func /(a: V4S, s: F32) -> V4S { return V4S(a.x / s, a.y / s, a.z / s, a.w / s) }

public func ==(a: V4S, b: V4S) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}


public typealias V4D = double4

extension V4D : VecType4, FloatVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = F64
  typealias FloatType = F64
  typealias VSType = V4S
  typealias VDType = V4D
  typealias VU8Type = V4U8
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V3D, _ s: Scalar) {
    self.init(v.x, v.y, v.z, s)
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 4 {
      throw Json.Error.ExcessEl(index: 4, exp: V4D.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1), try jsonArray.el(2), try jsonArray.el(3))
  }

  static let zero = V4D(0, 0, 0, 0)
  static let unitX = V4D(1, 0, 0, 0)
  static let unitY = V4D(0, 1, 0, 0)
  static let unitZ = V4D(0, 0, 1, 0)
  static let unitW = V4D(0, 0, 0, 1)
  public var description: String { return "V4D(\(x), \(y), \(z), \(w))" }
  var vs: V4S { return V4S(F32(x), F32(y), F32(z), F32(w)) }
  var vd: V4D { return V4D(F64(x), F64(y), F64(z), F64(w)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr + FloatType(z).sqr + FloatType(w).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var r: Scalar {
    get { return x }
    set { x = newValue }
  }
  var g: Scalar {
    get { return y }
    set { y = newValue }
  }
  var b: Scalar {
    get { return z }
    set { z = newValue }
  }
  var a: Scalar {
    get { return w }
    set { w = newValue }
  }

  var allNormal: Bool { return x.isNormal && y.isNormal && z.isNormal && w.isNormal }
  var allFinite: Bool { return x.isFinite && y.isFinite && z.isFinite && w.isFinite }
  var allZero: Bool { return x.isNormal && y.isNormal && z.isNormal && w.isNormal }
  var anySubnormal: Bool { return x.isSubnormal || y.isSubnormal || z.isSubnormal || w.isSubnormal}
  var anyInfite: Bool { return x.isInfinite || y.isInfinite || z.isInfinite || w.isInfinite}
  var anyNaN: Bool { return x.isNaN || y.isNaN || z.isNaN || w.isNaN}
  var norm: V4D { return self / self.len }
  var clampToUnit: V4D { return V4D(clamp(x, min: 0, max: 1), clamp(y, min: 0, max: 1), clamp(z, min: 0, max: 1), clamp(w, min: 0, max: 1)) }
  var toU8Pixel: VU8Type { return VU8Type(U8(clamp(x * 255, min: 0, max: 255)), U8(clamp(y * 255, min: 0, max: 255)), U8(clamp(z * 255, min: 0, max: 255)), U8(clamp(w * 255, min: 0, max: 255))) }
  var heading: Scalar { return atan2(y, x) }

  func dot(b: V4D) -> Scalar { return (x * b.x) + (y * b.y) + (z * b.z) + (w * b.w) }
  func angle(b: V4D) -> Scalar { return acos(self.dot(b) / (self.len * b.len)) }
  func lerp(b: V4D, _ t: Scalar) -> V4D { return self * (1 - t) + b * t }

  func cross(b: V4D) -> V4D { return V4D(
  y * b.z - z * b.y,
  z * b.x - x * b.z,
  x * b.y - y * b.x,
  0
)}

}

func +(a: V4D, b: V4D) -> V4D { return V4D(a.x + b.x, a.y + b.y, a.z + b.z, a.w + b.w) }
func -(a: V4D, b: V4D) -> V4D { return V4D(a.x - b.x, a.y - b.y, a.z - b.z, a.w - b.w) }
func *(a: V4D, b: V4D) -> V4D { return V4D(a.x * b.x, a.y * b.y, a.z * b.z, a.w * b.w) }
func /(a: V4D, b: V4D) -> V4D { return V4D(a.x / b.x, a.y / b.y, a.z / b.z, a.w / b.w) }
func +(a: V4D, s: F64) -> V4D { return V4D(a.x + s, a.y + s, a.z + s, a.w + s) }
func -(a: V4D, s: F64) -> V4D { return V4D(a.x - s, a.y - s, a.z - s, a.w - s) }
func *(a: V4D, s: F64) -> V4D { return V4D(a.x * s, a.y * s, a.z * s, a.w * s) }
func /(a: V4D, s: F64) -> V4D { return V4D(a.x / s, a.y / s, a.z / s, a.w / s) }

public func ==(a: V4D, b: V4D) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}


public struct V4I : VecType4, IntVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = Int
  typealias FloatType = F64
  typealias VSType = V4S
  typealias VDType = V4D
  typealias VU8Type = V4U8
  var x: Scalar
  var y: Scalar
  var z: Scalar
  var w: Scalar
  init(_ x: Scalar, _ y: Scalar, _ z: Scalar, _ w: Scalar) {
    self.x = x
    self.y = y
    self.z = z
    self.w = w
  }
  init() { self.init(0, 0, 0, 0) }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V4U8) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V3I, _ s: Scalar) {
    self.init(v.x, v.y, v.z, s)
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 4 {
      throw Json.Error.ExcessEl(index: 4, exp: V4I.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1), try jsonArray.el(2), try jsonArray.el(3))
  }

  static let zero = V4I(0, 0, 0, 0)
  static let unitX = V4I(1, 0, 0, 0)
  static let unitY = V4I(0, 1, 0, 0)
  static let unitZ = V4I(0, 0, 1, 0)
  static let unitW = V4I(0, 0, 0, 1)
  public var description: String { return "V4I(\(x), \(y), \(z), \(w))" }
  var vs: V4S { return V4S(F32(x), F32(y), F32(z), F32(w)) }
  var vd: V4D { return V4D(F64(x), F64(y), F64(z), F64(w)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr + FloatType(z).sqr + FloatType(w).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var r: Scalar {
    get { return x }
    set { x = newValue }
  }
  var g: Scalar {
    get { return y }
    set { y = newValue }
  }
  var b: Scalar {
    get { return z }
    set { z = newValue }
  }
  var a: Scalar {
    get { return w }
    set { w = newValue }
  }
}

func +(a: V4I, b: V4I) -> V4I { return V4I(a.x + b.x, a.y + b.y, a.z + b.z, a.w + b.w) }
func -(a: V4I, b: V4I) -> V4I { return V4I(a.x - b.x, a.y - b.y, a.z - b.z, a.w - b.w) }
func *(a: V4I, b: V4I) -> V4I { return V4I(a.x * b.x, a.y * b.y, a.z * b.z, a.w * b.w) }
func /(a: V4I, b: V4I) -> V4I { return V4I(a.x / b.x, a.y / b.y, a.z / b.z, a.w / b.w) }
func +(a: V4I, s: Int) -> V4I { return V4I(a.x + s, a.y + s, a.z + s, a.w + s) }
func -(a: V4I, s: Int) -> V4I { return V4I(a.x - s, a.y - s, a.z - s, a.w - s) }
func *(a: V4I, s: Int) -> V4I { return V4I(a.x * s, a.y * s, a.z * s, a.w * s) }
func /(a: V4I, s: Int) -> V4I { return V4I(a.x / s, a.y / s, a.z / s, a.w / s) }

public func ==(a: V4I, b: V4I) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}


public struct V4U8 : VecType4, IntVecType, Equatable, CustomStringConvertible, JsonArrayInitable {
  typealias Scalar = U8
  typealias FloatType = F32
  typealias VSType = V4S
  typealias VDType = V4D
  typealias VU8Type = V4U8
  var x: Scalar
  var y: Scalar
  var z: Scalar
  var w: Scalar
  init(_ x: Scalar, _ y: Scalar, _ z: Scalar, _ w: Scalar) {
    self.x = x
    self.y = y
    self.z = z
    self.w = w
  }
  init() { self.init(0, 0, 0, 0) }
  init(_ v: V4S) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V4D) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V4I) {
    self.init(Scalar(v.x), Scalar(v.y), Scalar(v.z), Scalar(v.w))
  }
  init(_ v: V3U8, _ s: Scalar) {
    self.init(v.x, v.y, v.z, s)
  }
  init(jsonArray: JsonArray) throws {
    if jsonArray.count > 4 {
      throw Json.Error.ExcessEl(index: 4, exp: V4U8.self, json: jsonArray.raw)
    }
    self.init(try jsonArray.el(0), try jsonArray.el(1), try jsonArray.el(2), try jsonArray.el(3))
  }

  static let zero = V4U8(0, 0, 0, 0)
  static let unitX = V4U8(1, 0, 0, 0)
  static let unitY = V4U8(0, 1, 0, 0)
  static let unitZ = V4U8(0, 0, 1, 0)
  static let unitW = V4U8(0, 0, 0, 1)
  public var description: String { return "V4U8(\(x), \(y), \(z), \(w))" }
  var vs: V4S { return V4S(F32(x), F32(y), F32(z), F32(w)) }
  var vd: V4D { return V4D(F64(x), F64(y), F64(z), F64(w)) }
  var sqrLen: FloatType { return (FloatType(x).sqr + FloatType(y).sqr + FloatType(z).sqr + FloatType(w).sqr) }
  var aspect: FloatType { return FloatType(x) / FloatType(y) }
  var r: Scalar {
    get { return x }
    set { x = newValue }
  }
  var g: Scalar {
    get { return y }
    set { y = newValue }
  }
  var b: Scalar {
    get { return z }
    set { z = newValue }
  }
  var a: Scalar {
    get { return w }
    set { w = newValue }
  }
  var toSPixel: VSType { return VSType(F32(x) / F32(0xFF), F32(y) / F32(0xFF), F32(z) / F32(0xFF), F32(w) / F32(0xFF)) }
}

func +(a: V4U8, b: V4U8) -> V4U8 { return V4U8(a.x + b.x, a.y + b.y, a.z + b.z, a.w + b.w) }
func -(a: V4U8, b: V4U8) -> V4U8 { return V4U8(a.x - b.x, a.y - b.y, a.z - b.z, a.w - b.w) }
func *(a: V4U8, b: V4U8) -> V4U8 { return V4U8(a.x * b.x, a.y * b.y, a.z * b.z, a.w * b.w) }
func /(a: V4U8, b: V4U8) -> V4U8 { return V4U8(a.x / b.x, a.y / b.y, a.z / b.z, a.w / b.w) }
func +(a: V4U8, s: U8) -> V4U8 { return V4U8(a.x + s, a.y + s, a.z + s, a.w + s) }
func -(a: V4U8, s: U8) -> V4U8 { return V4U8(a.x - s, a.y - s, a.z - s, a.w - s) }
func *(a: V4U8, s: U8) -> V4U8 { return V4U8(a.x * s, a.y * s, a.z * s, a.w * s) }
func /(a: V4U8, s: U8) -> V4U8 { return V4U8(a.x / s, a.y / s, a.z / s, a.w / s) }

public func ==(a: V4U8, b: V4U8) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}

