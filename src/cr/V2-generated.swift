// © 2015 George King.
// Permission to use this file is granted in license-qk.txt.
// This file is generated by gen-vec.py.

  
import CoreGraphics

extension V2 {
  typealias ScalarType = Flt
  typealias FloatType = Flt
  typealias VSType = V2S
  typealias VDType = V2D
  init(_ x: Flt = 0, _ y: Flt = 0) {
    self.x = x
    self.y = y
  }
  init(_ v: V2) { self = v }
  init(_ v: V2S) {
    self.x = Flt(v.x)
    self.y = Flt(v.y)
  }
  init(_ v: V2D) {
    self.x = Flt(v.x)
    self.y = Flt(v.y)
  }
  init(_ v: V2I) {
    self.x = Flt(v.x)
    self.y = Flt(v.y)
  }
  init(_ v: V3S) {
    self.x = Flt(v.x)
    self.y = Flt(v.y)
  }
  init(_ v: V3D) {
    self.x = Flt(v.x)
    self.y = Flt(v.y)
  }
  init(_ v: V3I) {
    self.x = Flt(v.x)
    self.y = Flt(v.y)
  }
  init(_ v: V4S) {
    self.x = Flt(v.x)
    self.y = Flt(v.y)
  }
  init(_ v: V4D) {
    self.x = Flt(v.x)
    self.y = Flt(v.y)
  }
  init(_ v: V4I) {
    self.x = Flt(v.x)
    self.y = Flt(v.y)
  }
  static let zero = V2(0, 0)
  static let unitX = V2(1, 0)
  static let unitY = V2(0, 1)
  public var description: String { return "V2(\(x), \(y))" }
  var vs: V2S { return V2S(F32(x), F32(y)) }
  var vd: V2D { return V2D(F64(x), F64(y)) }
  var sqrLen: Flt { return (Flt(x).sqr + Flt(y).sqr) }
  var len: Flt { return sqrLen.sqrt }
  var aspect: Flt { return Flt(x) / Flt(y) }
  var l: Flt { return x }
  var a: Flt { return y }

  var allNormal: Bool { return x.isNormal && y.isNormal }
  var allFinite: Bool { return x.isFinite && y.isFinite }
  var allZero: Bool { return x.isNormal && y.isNormal }
  var anySubnormal: Bool { return x.isSubnormal || y.isSubnormal}
  var anyInfite: Bool { return x.isInfinite || y.isInfinite}
  var anyNaN: Bool { return x.isNaN || y.isNaN}

  var norm: V2 { return V2(self) / self.len }
  var clampToUnit: V2 { return V2(clamp(x, l: 0, h: 1), clamp(y, l: 0, h: 1)) }
  func dist(b: V2) -> Flt { return (b - self).len }
  func dot(b: V2) -> Flt { return (x * b.x) + (y * b.y) }
  func angle(b: V2) -> Flt { return acos(self.dot(b) / (self.len * b.len)) }
  func lerp(b: V2, _ t: Flt) -> V2 { return self * (1 - t) + b * t }

}

func +(a: V2, b: V2) -> V2 { return V2(a.x + b.x, a.y + b.y) }
func -(a: V2, b: V2) -> V2 { return V2(a.x - b.x, a.y - b.y) }
func *(a: V2, b: V2) -> V2 { return V2(a.x * b.x, a.y * b.y) }
func /(a: V2, b: V2) -> V2 { return V2(a.x / b.x, a.y / b.y) }
func +(a: V2, s: Flt) -> V2 { return V2(a.x + s, a.y + s) }
func -(a: V2, s: Flt) -> V2 { return V2(a.x - s, a.y - s) }
func *(a: V2, s: Flt) -> V2 { return V2(a.x * s, a.y * s) }
func /(a: V2, s: Flt) -> V2 { return V2(a.x / s, a.y / s) }

