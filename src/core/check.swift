// © 2014 George King. Permission to use this file is granted in license-qk.txt.

import Darwin


func check(condition: Bool, @autoclosure _ message: () -> String) {
  if !condition {
    std_err.write("error: ")
    std_err.write(message())
    std_err.write("\n")
    exit(1)
  }
}

func check(condition: Bool, file: StaticString = __FILE__, line: UInt = __LINE__) {
  if !condition {
    fatalError("check failure", file: file, line: line)
  }
}
