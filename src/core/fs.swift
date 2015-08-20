// © 2015 George King. Permission to use this file is granted in license-qk.txt.

import Darwin


func rename(fromPath: String, toPath: String) {
  if Darwin.rename(fromPath, toPath) != 0 {
    fail("rename(\(fromPath), \(toPath)) failed: \(stringForCurrentError())")
  }
}