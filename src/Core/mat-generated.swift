// © 2015 George King. Permission to use this file is granted in license-qk.txt.
// This file is generated by gen-mat.py.

import simd
import simd.matrix


typealias M2S = float2x2

extension M2S {
  var c0: V2S { return self[0] }
  var c1: V2S { return self[1] }
  var r0: V2S { return V2S(self[0, 0], self[1, 0]) }
  var r1: V2S { return V2S(self[0, 1], self[1, 1]) }
  static let zero = M2S(0)
  static let ident = M2S(1)
  static func scale(_ x: F32, y: F32) -> M2S { return M2S(diagonal: V2S(x, y)) }

}

typealias M2D = double2x2

extension M2D {
  var c0: V2D { return self[0] }
  var c1: V2D { return self[1] }
  var r0: V2D { return V2D(self[0, 0], self[1, 0]) }
  var r1: V2D { return V2D(self[0, 1], self[1, 1]) }
  static let zero = M2D(0)
  static let ident = M2D(1)
  static func scale(_ x: F64, y: F64) -> M2D { return M2D(diagonal: V2D(x, y)) }

}

typealias M3S = float3x3

extension M3S {
  var c0: V3S { return self[0] }
  var c1: V3S { return self[1] }
  var c2: V3S { return self[2] }
  var r0: V3S { return V3S(self[0, 0], self[1, 0], self[2, 0]) }
  var r1: V3S { return V3S(self[0, 1], self[1, 1], self[2, 1]) }
  var r2: V3S { return V3S(self[0, 2], self[1, 2], self[2, 2]) }
  static let zero = M3S(0)
  static let ident = M3S(1)
  static func scale(_ x: F32, y: F32, z: F32) -> M3S { return M3S(diagonal: V3S(x, y, z)) }

  static func rotX(_ theta: F32) -> M3S { return M3S([
    V3S(          1,           0,           0),
    V3S(          0,  cos(theta),  sin(theta)),
    V3S(          0, -sin(theta),  cos(theta))
  ])}

  static func rotY(_ theta: F32) -> M3S { return M3S([
    V3S( cos(theta),           0, -sin(theta)),
    V3S(          0,           1,           0),
    V3S( sin(theta),           0,  cos(theta))
  ])}

  static func rotZ(_ theta: F32) -> M3S { return M3S([
    V3S( cos(theta),  sin(theta),           0),
    V3S(-sin(theta),  cos(theta),           0),
    V3S(          0,           0,           1)
  ])}

  static func rot(theta: F32, norm: V3S) -> M3S {
    if !theta.isNormal { return ident }
    let _cos = cos(theta)
    let _cosp = 1 - _cos
    let _sin = sin(theta)
    return M3S([
      V3S(_cos + _cosp * norm.x * norm.x, _cosp * norm.x * norm.y + norm.z * _sin, _cosp * norm.x * norm.z - norm.y * _sin),
      V3S(_cosp * norm.x * norm.y - norm.z * _sin, _cos + _cosp * norm.y * norm.y, _cosp * norm.y * norm.z + norm.x * _sin),
      V3S(_cosp * norm.x * norm.z + norm.y * _sin, _cosp * norm.y * norm.z - norm.x * _sin, _cos + _cosp * norm.z * norm.z)
  ])}

  static func rot(_ a: V3S, _ b: V3S) -> M3S {
    return rot(theta: a.angle(b), norm: a.cross(b).norm)
  }

}

typealias M3D = double3x3

extension M3D {
  var c0: V3D { return self[0] }
  var c1: V3D { return self[1] }
  var c2: V3D { return self[2] }
  var r0: V3D { return V3D(self[0, 0], self[1, 0], self[2, 0]) }
  var r1: V3D { return V3D(self[0, 1], self[1, 1], self[2, 1]) }
  var r2: V3D { return V3D(self[0, 2], self[1, 2], self[2, 2]) }
  static let zero = M3D(0)
  static let ident = M3D(1)
  static func scale(_ x: F64, y: F64, z: F64) -> M3D { return M3D(diagonal: V3D(x, y, z)) }

  static func rotX(_ theta: F64) -> M3D { return M3D([
    V3D(          1,           0,           0),
    V3D(          0,  cos(theta),  sin(theta)),
    V3D(          0, -sin(theta),  cos(theta))
  ])}

  static func rotY(_ theta: F64) -> M3D { return M3D([
    V3D( cos(theta),           0, -sin(theta)),
    V3D(          0,           1,           0),
    V3D( sin(theta),           0,  cos(theta))
  ])}

  static func rotZ(_ theta: F64) -> M3D { return M3D([
    V3D( cos(theta),  sin(theta),           0),
    V3D(-sin(theta),  cos(theta),           0),
    V3D(          0,           0,           1)
  ])}

  static func rot(theta: F64, norm: V3D) -> M3D {
    if !theta.isNormal { return ident }
    let _cos = cos(theta)
    let _cosp = 1 - _cos
    let _sin = sin(theta)
    return M3D([
      V3D(_cos + _cosp * norm.x * norm.x, _cosp * norm.x * norm.y + norm.z * _sin, _cosp * norm.x * norm.z - norm.y * _sin),
      V3D(_cosp * norm.x * norm.y - norm.z * _sin, _cos + _cosp * norm.y * norm.y, _cosp * norm.y * norm.z + norm.x * _sin),
      V3D(_cosp * norm.x * norm.z + norm.y * _sin, _cosp * norm.y * norm.z - norm.x * _sin, _cos + _cosp * norm.z * norm.z)
  ])}

  static func rot(_ a: V3D, _ b: V3D) -> M3D {
    return rot(theta: a.angle(b), norm: a.cross(b).norm)
  }

}

typealias M4S = float4x4

extension M4S {
  var c0: V4S { return self[0] }
  var c1: V4S { return self[1] }
  var c2: V4S { return self[2] }
  var c3: V4S { return self[3] }
  var r0: V4S { return V4S(self[0, 0], self[1, 0], self[2, 0], self[3, 0]) }
  var r1: V4S { return V4S(self[0, 1], self[1, 1], self[2, 1], self[3, 1]) }
  var r2: V4S { return V4S(self[0, 2], self[1, 2], self[2, 2], self[3, 2]) }
  var r3: V4S { return V4S(self[0, 3], self[1, 3], self[2, 3], self[3, 3]) }
  static let zero = M4S(0)
  static let ident = M4S(1)
  static func scale(_ x: F32, y: F32, z: F32, w: F32) -> M4S { return M4S(diagonal: V4S(x, y, z, w)) }

  static func rotX(_ theta: F32) -> M4S { return M4S([
    V4S(          1,           0,           0,           0),
    V4S(          0,  cos(theta),  sin(theta),           0),
    V4S(          0, -sin(theta),  cos(theta),           0),
    V4S(          0,           0,           0,           1)
  ])}

  static func rotY(_ theta: F32) -> M4S { return M4S([
    V4S( cos(theta),           0, -sin(theta),           0),
    V4S(          0,           1,           0,           0),
    V4S( sin(theta),           0,  cos(theta),           0),
    V4S(          0,           0,           0,           1)
  ])}

  static func rotZ(_ theta: F32) -> M4S { return M4S([
    V4S( cos(theta),  sin(theta),           0,           0),
    V4S(-sin(theta),  cos(theta),           0,           0),
    V4S(          0,           0,           1,           0),
    V4S(          0,           0,           0,           1)
  ])}

  static func rot(theta: F32, norm: V4S) -> M4S {
    if !theta.isNormal { return ident }
    let _cos = cos(theta)
    let _cosp = 1 - _cos
    let _sin = sin(theta)
    return M4S([
      V4S(_cos + _cosp * norm.x * norm.x, _cosp * norm.x * norm.y + norm.z * _sin, _cosp * norm.x * norm.z - norm.y * _sin, 0),
      V4S(_cosp * norm.x * norm.y - norm.z * _sin, _cos + _cosp * norm.y * norm.y, _cosp * norm.y * norm.z + norm.x * _sin, 0),
      V4S(_cosp * norm.x * norm.z + norm.y * _sin, _cosp * norm.y * norm.z - norm.x * _sin, _cos + _cosp * norm.z * norm.z, 0),
      V4S(0, 0, 0, 1)
  ])}

  static func rot(_ a: V4S, _ b: V4S) -> M4S {
    return rot(theta: a.angle(b), norm: a.cross(b).norm)
  }

}

typealias M4D = double4x4

extension M4D {
  var c0: V4D { return self[0] }
  var c1: V4D { return self[1] }
  var c2: V4D { return self[2] }
  var c3: V4D { return self[3] }
  var r0: V4D { return V4D(self[0, 0], self[1, 0], self[2, 0], self[3, 0]) }
  var r1: V4D { return V4D(self[0, 1], self[1, 1], self[2, 1], self[3, 1]) }
  var r2: V4D { return V4D(self[0, 2], self[1, 2], self[2, 2], self[3, 2]) }
  var r3: V4D { return V4D(self[0, 3], self[1, 3], self[2, 3], self[3, 3]) }
  static let zero = M4D(0)
  static let ident = M4D(1)
  static func scale(_ x: F64, y: F64, z: F64, w: F64) -> M4D { return M4D(diagonal: V4D(x, y, z, w)) }

  static func rotX(_ theta: F64) -> M4D { return M4D([
    V4D(          1,           0,           0,           0),
    V4D(          0,  cos(theta),  sin(theta),           0),
    V4D(          0, -sin(theta),  cos(theta),           0),
    V4D(          0,           0,           0,           1)
  ])}

  static func rotY(_ theta: F64) -> M4D { return M4D([
    V4D( cos(theta),           0, -sin(theta),           0),
    V4D(          0,           1,           0,           0),
    V4D( sin(theta),           0,  cos(theta),           0),
    V4D(          0,           0,           0,           1)
  ])}

  static func rotZ(_ theta: F64) -> M4D { return M4D([
    V4D( cos(theta),  sin(theta),           0,           0),
    V4D(-sin(theta),  cos(theta),           0,           0),
    V4D(          0,           0,           1,           0),
    V4D(          0,           0,           0,           1)
  ])}

  static func rot(theta: F64, norm: V4D) -> M4D {
    if !theta.isNormal { return ident }
    let _cos = cos(theta)
    let _cosp = 1 - _cos
    let _sin = sin(theta)
    return M4D([
      V4D(_cos + _cosp * norm.x * norm.x, _cosp * norm.x * norm.y + norm.z * _sin, _cosp * norm.x * norm.z - norm.y * _sin, 0),
      V4D(_cosp * norm.x * norm.y - norm.z * _sin, _cos + _cosp * norm.y * norm.y, _cosp * norm.y * norm.z + norm.x * _sin, 0),
      V4D(_cosp * norm.x * norm.z + norm.y * _sin, _cosp * norm.y * norm.z - norm.x * _sin, _cos + _cosp * norm.z * norm.z, 0),
      V4D(0, 0, 0, 1)
  ])}

  static func rot(_ a: V4D, _ b: V4D) -> M4D {
    return rot(theta: a.angle(b), norm: a.cross(b).norm)
  }

}

