// © 2014 George King.
// Permission to use this file is granted in license-qk.txt.

import Foundation

struct Tri {
  var a, b, c: U16
  init(_ a: U16, _ b: U16, _ c: U16) {
    assert(a < b && a < c)
    self.a = a
    self.b = b
    self.c = c
  }
}

struct Seg {
  var a, b: U16
  init(_ a: U16, _ b: U16) {
    if (a < b) {
      self.a = a
      self.b = b
    } else {
      self.a = b
      self.b = a
    }
  }
}

struct Adj {
  var a, b: U16
  init(_ a: U16, _ b: U16) {
    if (a < b) {
      self.a = a
      self.b = b
    } else {
      self.a = b
      self.b = a
    }
  }
}

func EulerEdgeCount(vertexCount: Int, faceCount: Int) -> Int {
  return vertexCount + faceCount - 2
}
