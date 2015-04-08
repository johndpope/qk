// © 2015 George King.
// Permission to use this file is granted in license-qk.txt.
// This file is generated by gen-vec.py.

  
struct V2S: Equatable, Printable, VecType2, FloatVecType {
  var x, y: F32
  typealias ScalarType = F32
  typealias FloatType = F32
  typealias VSType = V2S
  typealias VDType = V2D
  init(_ x: F32 = 0, _ y: F32 = 0) {
    self.x = x
    self.y = y
  }
  init(_ v: V2S) { self = v }
  init(_ v: V2D) {
    self.x = F32(v.x)
    self.y = F32(v.y)
  }
  init(_ v: V2I) {
    self.x = F32(v.x)
    self.y = F32(v.y)
  }
  init(_ v: V3S) {
    self.x = F32(v.x)
    self.y = F32(v.y)
  }
  init(_ v: V3D) {
    self.x = F32(v.x)
    self.y = F32(v.y)
  }
  init(_ v: V3I) {
    self.x = F32(v.x)
    self.y = F32(v.y)
  }
  init(_ v: V4S) {
    self.x = F32(v.x)
    self.y = F32(v.y)
  }
  init(_ v: V4D) {
    self.x = F32(v.x)
    self.y = F32(v.y)
  }
  init(_ v: V4I) {
    self.x = F32(v.x)
    self.y = F32(v.y)
  }
  static let zero = V2S(0, 0)
  static let unitX = V2S(1, 0)
  static let unitY = V2S(0, 1)
  var description: String { return "V2S(\(x), \(y))" }
  var vs: V2S { return V2S(F32(x), F32(y)) }
  var vd: V2D { return V2D(F64(x), F64(y)) }
  var sqrLen: F32 { return (F32(x).sqr + F32(y).sqr) }
  var len: F32 { return sqrLen.sqrt }
  var aspect: F32 { return F32(x) / F32(y) }
  var l: F32 { return x }
  var a: F32 { return y }

  var norm: V2S { return V2S(self) / self.len }
  var clampToUnit: V2S { return V2S(clamp(x, 0, 1), clamp(y, 0, 1)) }
  func dist(b: V2S) -> F32 { return (b - self).len }
  func dot(b: V2S) -> F32 { return (x * b.x) + (y * b.y) }
  func angle(b: V2S) -> F32 { return acos(self.dot(b) / (self.len * b.len)) }

}

func +(a: V2S, b: V2S) -> V2S { return V2S(a.x + b.x, a.y + b.y) }
func -(a: V2S, b: V2S) -> V2S { return V2S(a.x - b.x, a.y - b.y) }
func *(a: V2S, b: V2S) -> V2S { return V2S(a.x * b.x, a.y * b.y) }
func /(a: V2S, b: V2S) -> V2S { return V2S(a.x / b.x, a.y / b.y) }
func +(a: V2S, s: F32) -> V2S { return V2S(a.x + s, a.y + s) }
func -(a: V2S, s: F32) -> V2S { return V2S(a.x - s, a.y - s) }
func *(a: V2S, s: F32) -> V2S { return V2S(a.x * s, a.y * s) }
func /(a: V2S, s: F32) -> V2S { return V2S(a.x / s, a.y / s) }

func ==(a: V2S, b: V2S) -> Bool {
  return a.x == b.x && a.y == b.y
}

struct V2D: Equatable, Printable, VecType2, FloatVecType {
  var x, y: F64
  typealias ScalarType = F64
  typealias FloatType = F64
  typealias VSType = V2S
  typealias VDType = V2D
  init(_ x: F64 = 0, _ y: F64 = 0) {
    self.x = x
    self.y = y
  }
  init(_ v: V2D) { self = v }
  init(_ v: V2S) {
    self.x = F64(v.x)
    self.y = F64(v.y)
  }
  init(_ v: V2I) {
    self.x = F64(v.x)
    self.y = F64(v.y)
  }
  init(_ v: V3S) {
    self.x = F64(v.x)
    self.y = F64(v.y)
  }
  init(_ v: V3D) {
    self.x = F64(v.x)
    self.y = F64(v.y)
  }
  init(_ v: V3I) {
    self.x = F64(v.x)
    self.y = F64(v.y)
  }
  init(_ v: V4S) {
    self.x = F64(v.x)
    self.y = F64(v.y)
  }
  init(_ v: V4D) {
    self.x = F64(v.x)
    self.y = F64(v.y)
  }
  init(_ v: V4I) {
    self.x = F64(v.x)
    self.y = F64(v.y)
  }
  static let zero = V2D(0, 0)
  static let unitX = V2D(1, 0)
  static let unitY = V2D(0, 1)
  var description: String { return "V2D(\(x), \(y))" }
  var vs: V2S { return V2S(F32(x), F32(y)) }
  var vd: V2D { return V2D(F64(x), F64(y)) }
  var sqrLen: F64 { return (F64(x).sqr + F64(y).sqr) }
  var len: F64 { return sqrLen.sqrt }
  var aspect: F64 { return F64(x) / F64(y) }
  var l: F64 { return x }
  var a: F64 { return y }

  var norm: V2D { return V2D(self) / self.len }
  var clampToUnit: V2D { return V2D(clamp(x, 0, 1), clamp(y, 0, 1)) }
  func dist(b: V2D) -> F64 { return (b - self).len }
  func dot(b: V2D) -> F64 { return (x * b.x) + (y * b.y) }
  func angle(b: V2D) -> F64 { return acos(self.dot(b) / (self.len * b.len)) }

}

func +(a: V2D, b: V2D) -> V2D { return V2D(a.x + b.x, a.y + b.y) }
func -(a: V2D, b: V2D) -> V2D { return V2D(a.x - b.x, a.y - b.y) }
func *(a: V2D, b: V2D) -> V2D { return V2D(a.x * b.x, a.y * b.y) }
func /(a: V2D, b: V2D) -> V2D { return V2D(a.x / b.x, a.y / b.y) }
func +(a: V2D, s: F64) -> V2D { return V2D(a.x + s, a.y + s) }
func -(a: V2D, s: F64) -> V2D { return V2D(a.x - s, a.y - s) }
func *(a: V2D, s: F64) -> V2D { return V2D(a.x * s, a.y * s) }
func /(a: V2D, s: F64) -> V2D { return V2D(a.x / s, a.y / s) }

func ==(a: V2D, b: V2D) -> Bool {
  return a.x == b.x && a.y == b.y
}

struct V2I: Equatable, Printable, VecType2, IntVecType {
  var x, y: Int
  typealias ScalarType = Int
  typealias FloatType = F64
  typealias VSType = V2S
  typealias VDType = V2D
  init(_ x: Int = 0, _ y: Int = 0) {
    self.x = x
    self.y = y
  }
  init(_ v: V2I) { self = v }
  init(_ v: V2S) {
    self.x = Int(v.x)
    self.y = Int(v.y)
  }
  init(_ v: V2D) {
    self.x = Int(v.x)
    self.y = Int(v.y)
  }
  init(_ v: V3S) {
    self.x = Int(v.x)
    self.y = Int(v.y)
  }
  init(_ v: V3D) {
    self.x = Int(v.x)
    self.y = Int(v.y)
  }
  init(_ v: V3I) {
    self.x = Int(v.x)
    self.y = Int(v.y)
  }
  init(_ v: V4S) {
    self.x = Int(v.x)
    self.y = Int(v.y)
  }
  init(_ v: V4D) {
    self.x = Int(v.x)
    self.y = Int(v.y)
  }
  init(_ v: V4I) {
    self.x = Int(v.x)
    self.y = Int(v.y)
  }
  static let zero = V2I(0, 0)
  static let unitX = V2I(1, 0)
  static let unitY = V2I(0, 1)
  var description: String { return "V2I(\(x), \(y))" }
  var vs: V2S { return V2S(F32(x), F32(y)) }
  var vd: V2D { return V2D(F64(x), F64(y)) }
  var sqrLen: F64 { return (F64(x).sqr + F64(y).sqr) }
  var len: F64 { return sqrLen.sqrt }
  var aspect: F64 { return F64(x) / F64(y) }
  var l: Int { return x }
  var a: Int { return y }
}

func +(a: V2I, b: V2I) -> V2I { return V2I(a.x + b.x, a.y + b.y) }
func -(a: V2I, b: V2I) -> V2I { return V2I(a.x - b.x, a.y - b.y) }
func *(a: V2I, b: V2I) -> V2I { return V2I(a.x * b.x, a.y * b.y) }
func /(a: V2I, b: V2I) -> V2I { return V2I(a.x / b.x, a.y / b.y) }
func +(a: V2I, s: Int) -> V2I { return V2I(a.x + s, a.y + s) }
func -(a: V2I, s: Int) -> V2I { return V2I(a.x - s, a.y - s) }
func *(a: V2I, s: Int) -> V2I { return V2I(a.x * s, a.y * s) }
func /(a: V2I, s: Int) -> V2I { return V2I(a.x / s, a.y / s) }

func ==(a: V2I, b: V2I) -> Bool {
  return a.x == b.x && a.y == b.y
}

struct V3S: Equatable, Printable, VecType3, FloatVecType {
  var x, y, z: F32
  typealias ScalarType = F32
  typealias FloatType = F32
  typealias VSType = V3S
  typealias VDType = V3D
  init(_ x: F32 = 0, _ y: F32 = 0, _ z: F32 = 0) {
    self.x = x
    self.y = y
    self.z = z
  }
  init(_ v: V3S) { self = v }
  init(_ v: V3D) {
    self.x = F32(v.x)
    self.y = F32(v.y)
    self.z = F32(v.z)
  }
  init(_ v: V3I) {
    self.x = F32(v.x)
    self.y = F32(v.y)
    self.z = F32(v.z)
  }
  init(_ v: V4S) {
    self.x = F32(v.x)
    self.y = F32(v.y)
    self.z = F32(v.z)
  }
  init(_ v: V4D) {
    self.x = F32(v.x)
    self.y = F32(v.y)
    self.z = F32(v.z)
  }
  init(_ v: V4I) {
    self.x = F32(v.x)
    self.y = F32(v.y)
    self.z = F32(v.z)
  }
  init(_ v: V2S, _ s: F32) {
    self.x = v.x
    self.y = v.y
    self.z = s
  }
  static let zero = V3S(0, 0, 0)
  static let unitX = V3S(1, 0, 0)
  static let unitY = V3S(0, 1, 0)
  static let unitZ = V3S(0, 0, 1)
  var description: String { return "V3S(\(x), \(y), \(z))" }
  var vs: V3S { return V3S(F32(x), F32(y), F32(z)) }
  var vd: V3D { return V3D(F64(x), F64(y), F64(z)) }
  var sqrLen: F32 { return (F32(x).sqr + F32(y).sqr + F32(z).sqr) }
  var len: F32 { return sqrLen.sqrt }
  var aspect: F32 { return F32(x) / F32(y) }
  var r: F32 { return x }
  var g: F32 { return y }
  var b: F32 { return z }

  var norm: V3S { return V3S(self) / self.len }
  var clampToUnit: V3S { return V3S(clamp(x, 0, 1), clamp(y, 0, 1), clamp(z, 0, 1)) }
  func dist(b: V3S) -> F32 { return (b - self).len }
  func dot(b: V3S) -> F32 { return (x * b.x) + (y * b.y) + (z * b.z) }
  func angle(b: V3S) -> F32 { return acos(self.dot(b) / (self.len * b.len)) }

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

func ==(a: V3S, b: V3S) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}

struct V3D: Equatable, Printable, VecType3, FloatVecType {
  var x, y, z: F64
  typealias ScalarType = F64
  typealias FloatType = F64
  typealias VSType = V3S
  typealias VDType = V3D
  init(_ x: F64 = 0, _ y: F64 = 0, _ z: F64 = 0) {
    self.x = x
    self.y = y
    self.z = z
  }
  init(_ v: V3D) { self = v }
  init(_ v: V3S) {
    self.x = F64(v.x)
    self.y = F64(v.y)
    self.z = F64(v.z)
  }
  init(_ v: V3I) {
    self.x = F64(v.x)
    self.y = F64(v.y)
    self.z = F64(v.z)
  }
  init(_ v: V4S) {
    self.x = F64(v.x)
    self.y = F64(v.y)
    self.z = F64(v.z)
  }
  init(_ v: V4D) {
    self.x = F64(v.x)
    self.y = F64(v.y)
    self.z = F64(v.z)
  }
  init(_ v: V4I) {
    self.x = F64(v.x)
    self.y = F64(v.y)
    self.z = F64(v.z)
  }
  init(_ v: V2D, _ s: F64) {
    self.x = v.x
    self.y = v.y
    self.z = s
  }
  static let zero = V3D(0, 0, 0)
  static let unitX = V3D(1, 0, 0)
  static let unitY = V3D(0, 1, 0)
  static let unitZ = V3D(0, 0, 1)
  var description: String { return "V3D(\(x), \(y), \(z))" }
  var vs: V3S { return V3S(F32(x), F32(y), F32(z)) }
  var vd: V3D { return V3D(F64(x), F64(y), F64(z)) }
  var sqrLen: F64 { return (F64(x).sqr + F64(y).sqr + F64(z).sqr) }
  var len: F64 { return sqrLen.sqrt }
  var aspect: F64 { return F64(x) / F64(y) }
  var r: F64 { return x }
  var g: F64 { return y }
  var b: F64 { return z }

  var norm: V3D { return V3D(self) / self.len }
  var clampToUnit: V3D { return V3D(clamp(x, 0, 1), clamp(y, 0, 1), clamp(z, 0, 1)) }
  func dist(b: V3D) -> F64 { return (b - self).len }
  func dot(b: V3D) -> F64 { return (x * b.x) + (y * b.y) + (z * b.z) }
  func angle(b: V3D) -> F64 { return acos(self.dot(b) / (self.len * b.len)) }

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

func ==(a: V3D, b: V3D) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}

struct V3I: Equatable, Printable, VecType3, IntVecType {
  var x, y, z: Int
  typealias ScalarType = Int
  typealias FloatType = F64
  typealias VSType = V3S
  typealias VDType = V3D
  init(_ x: Int = 0, _ y: Int = 0, _ z: Int = 0) {
    self.x = x
    self.y = y
    self.z = z
  }
  init(_ v: V3I) { self = v }
  init(_ v: V3S) {
    self.x = Int(v.x)
    self.y = Int(v.y)
    self.z = Int(v.z)
  }
  init(_ v: V3D) {
    self.x = Int(v.x)
    self.y = Int(v.y)
    self.z = Int(v.z)
  }
  init(_ v: V4S) {
    self.x = Int(v.x)
    self.y = Int(v.y)
    self.z = Int(v.z)
  }
  init(_ v: V4D) {
    self.x = Int(v.x)
    self.y = Int(v.y)
    self.z = Int(v.z)
  }
  init(_ v: V4I) {
    self.x = Int(v.x)
    self.y = Int(v.y)
    self.z = Int(v.z)
  }
  init(_ v: V2I, _ s: Int) {
    self.x = v.x
    self.y = v.y
    self.z = s
  }
  static let zero = V3I(0, 0, 0)
  static let unitX = V3I(1, 0, 0)
  static let unitY = V3I(0, 1, 0)
  static let unitZ = V3I(0, 0, 1)
  var description: String { return "V3I(\(x), \(y), \(z))" }
  var vs: V3S { return V3S(F32(x), F32(y), F32(z)) }
  var vd: V3D { return V3D(F64(x), F64(y), F64(z)) }
  var sqrLen: F64 { return (F64(x).sqr + F64(y).sqr + F64(z).sqr) }
  var len: F64 { return sqrLen.sqrt }
  var aspect: F64 { return F64(x) / F64(y) }
  var r: Int { return x }
  var g: Int { return y }
  var b: Int { return z }
}

func +(a: V3I, b: V3I) -> V3I { return V3I(a.x + b.x, a.y + b.y, a.z + b.z) }
func -(a: V3I, b: V3I) -> V3I { return V3I(a.x - b.x, a.y - b.y, a.z - b.z) }
func *(a: V3I, b: V3I) -> V3I { return V3I(a.x * b.x, a.y * b.y, a.z * b.z) }
func /(a: V3I, b: V3I) -> V3I { return V3I(a.x / b.x, a.y / b.y, a.z / b.z) }
func +(a: V3I, s: Int) -> V3I { return V3I(a.x + s, a.y + s, a.z + s) }
func -(a: V3I, s: Int) -> V3I { return V3I(a.x - s, a.y - s, a.z - s) }
func *(a: V3I, s: Int) -> V3I { return V3I(a.x * s, a.y * s, a.z * s) }
func /(a: V3I, s: Int) -> V3I { return V3I(a.x / s, a.y / s, a.z / s) }

func ==(a: V3I, b: V3I) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z
}

struct V4S: Equatable, Printable, VecType4, FloatVecType {
  var x, y, z, w: F32
  typealias ScalarType = F32
  typealias FloatType = F32
  typealias VSType = V4S
  typealias VDType = V4D
  init(_ x: F32 = 0, _ y: F32 = 0, _ z: F32 = 0, _ w: F32 = 0) {
    self.x = x
    self.y = y
    self.z = z
    self.w = w
  }
  init(_ v: V4S) { self = v }
  init(_ v: V4D) {
    self.x = F32(v.x)
    self.y = F32(v.y)
    self.z = F32(v.z)
    self.w = F32(v.w)
  }
  init(_ v: V4I) {
    self.x = F32(v.x)
    self.y = F32(v.y)
    self.z = F32(v.z)
    self.w = F32(v.w)
  }
  init(_ v: V3S, _ s: F32) {
    self.x = v.x
    self.y = v.y
    self.z = v.z
    self.w = s
  }
  static let zero = V4S(0, 0, 0, 0)
  static let unitX = V4S(1, 0, 0, 0)
  static let unitY = V4S(0, 1, 0, 0)
  static let unitZ = V4S(0, 0, 1, 0)
  static let unitW = V4S(0, 0, 0, 1)
  var description: String { return "V4S(\(x), \(y), \(z), \(w))" }
  var vs: V4S { return V4S(F32(x), F32(y), F32(z), F32(w)) }
  var vd: V4D { return V4D(F64(x), F64(y), F64(z), F64(w)) }
  var sqrLen: F32 { return (F32(x).sqr + F32(y).sqr + F32(z).sqr + F32(w).sqr) }
  var len: F32 { return sqrLen.sqrt }
  var aspect: F32 { return F32(x) / F32(y) }
  var r: F32 { return x }
  var g: F32 { return y }
  var b: F32 { return z }
  var a: F32 { return w }

  var norm: V4S { return V4S(self) / self.len }
  var clampToUnit: V4S { return V4S(clamp(x, 0, 1), clamp(y, 0, 1), clamp(z, 0, 1), clamp(w, 0, 1)) }
  func dist(b: V4S) -> F32 { return (b - self).len }
  func dot(b: V4S) -> F32 { return (x * b.x) + (y * b.y) + (z * b.z) + (w * b.w) }
  func angle(b: V4S) -> F32 { return acos(self.dot(b) / (self.len * b.len)) }

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

func ==(a: V4S, b: V4S) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}

struct V4D: Equatable, Printable, VecType4, FloatVecType {
  var x, y, z, w: F64
  typealias ScalarType = F64
  typealias FloatType = F64
  typealias VSType = V4S
  typealias VDType = V4D
  init(_ x: F64 = 0, _ y: F64 = 0, _ z: F64 = 0, _ w: F64 = 0) {
    self.x = x
    self.y = y
    self.z = z
    self.w = w
  }
  init(_ v: V4D) { self = v }
  init(_ v: V4S) {
    self.x = F64(v.x)
    self.y = F64(v.y)
    self.z = F64(v.z)
    self.w = F64(v.w)
  }
  init(_ v: V4I) {
    self.x = F64(v.x)
    self.y = F64(v.y)
    self.z = F64(v.z)
    self.w = F64(v.w)
  }
  init(_ v: V3D, _ s: F64) {
    self.x = v.x
    self.y = v.y
    self.z = v.z
    self.w = s
  }
  static let zero = V4D(0, 0, 0, 0)
  static let unitX = V4D(1, 0, 0, 0)
  static let unitY = V4D(0, 1, 0, 0)
  static let unitZ = V4D(0, 0, 1, 0)
  static let unitW = V4D(0, 0, 0, 1)
  var description: String { return "V4D(\(x), \(y), \(z), \(w))" }
  var vs: V4S { return V4S(F32(x), F32(y), F32(z), F32(w)) }
  var vd: V4D { return V4D(F64(x), F64(y), F64(z), F64(w)) }
  var sqrLen: F64 { return (F64(x).sqr + F64(y).sqr + F64(z).sqr + F64(w).sqr) }
  var len: F64 { return sqrLen.sqrt }
  var aspect: F64 { return F64(x) / F64(y) }
  var r: F64 { return x }
  var g: F64 { return y }
  var b: F64 { return z }
  var a: F64 { return w }

  var norm: V4D { return V4D(self) / self.len }
  var clampToUnit: V4D { return V4D(clamp(x, 0, 1), clamp(y, 0, 1), clamp(z, 0, 1), clamp(w, 0, 1)) }
  func dist(b: V4D) -> F64 { return (b - self).len }
  func dot(b: V4D) -> F64 { return (x * b.x) + (y * b.y) + (z * b.z) + (w * b.w) }
  func angle(b: V4D) -> F64 { return acos(self.dot(b) / (self.len * b.len)) }

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

func ==(a: V4D, b: V4D) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}

struct V4I: Equatable, Printable, VecType4, IntVecType {
  var x, y, z, w: Int
  typealias ScalarType = Int
  typealias FloatType = F64
  typealias VSType = V4S
  typealias VDType = V4D
  init(_ x: Int = 0, _ y: Int = 0, _ z: Int = 0, _ w: Int = 0) {
    self.x = x
    self.y = y
    self.z = z
    self.w = w
  }
  init(_ v: V4I) { self = v }
  init(_ v: V4S) {
    self.x = Int(v.x)
    self.y = Int(v.y)
    self.z = Int(v.z)
    self.w = Int(v.w)
  }
  init(_ v: V4D) {
    self.x = Int(v.x)
    self.y = Int(v.y)
    self.z = Int(v.z)
    self.w = Int(v.w)
  }
  init(_ v: V3I, _ s: Int) {
    self.x = v.x
    self.y = v.y
    self.z = v.z
    self.w = s
  }
  static let zero = V4I(0, 0, 0, 0)
  static let unitX = V4I(1, 0, 0, 0)
  static let unitY = V4I(0, 1, 0, 0)
  static let unitZ = V4I(0, 0, 1, 0)
  static let unitW = V4I(0, 0, 0, 1)
  var description: String { return "V4I(\(x), \(y), \(z), \(w))" }
  var vs: V4S { return V4S(F32(x), F32(y), F32(z), F32(w)) }
  var vd: V4D { return V4D(F64(x), F64(y), F64(z), F64(w)) }
  var sqrLen: F64 { return (F64(x).sqr + F64(y).sqr + F64(z).sqr + F64(w).sqr) }
  var len: F64 { return sqrLen.sqrt }
  var aspect: F64 { return F64(x) / F64(y) }
  var r: Int { return x }
  var g: Int { return y }
  var b: Int { return z }
  var a: Int { return w }
}

func +(a: V4I, b: V4I) -> V4I { return V4I(a.x + b.x, a.y + b.y, a.z + b.z, a.w + b.w) }
func -(a: V4I, b: V4I) -> V4I { return V4I(a.x - b.x, a.y - b.y, a.z - b.z, a.w - b.w) }
func *(a: V4I, b: V4I) -> V4I { return V4I(a.x * b.x, a.y * b.y, a.z * b.z, a.w * b.w) }
func /(a: V4I, b: V4I) -> V4I { return V4I(a.x / b.x, a.y / b.y, a.z / b.z, a.w / b.w) }
func +(a: V4I, s: Int) -> V4I { return V4I(a.x + s, a.y + s, a.z + s, a.w + s) }
func -(a: V4I, s: Int) -> V4I { return V4I(a.x - s, a.y - s, a.z - s, a.w - s) }
func *(a: V4I, s: Int) -> V4I { return V4I(a.x * s, a.y * s, a.z * s, a.w * s) }
func /(a: V4I, s: Int) -> V4I { return V4I(a.x / s, a.y / s, a.z / s, a.w / s) }

func ==(a: V4I, b: V4I) -> Bool {
  return a.x == b.x && a.y == b.y && a.z == b.z && a.w == b.w
}

