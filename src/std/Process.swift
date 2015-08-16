// © 2015 George King.
// Permission to use this file is granted in license-qk.txt.

import Foundation


extension Process {

  static let environment: [String:String] = NSProcessInfo.processInfo().environment as [String:String]

  @noreturn static func exit(code: Int) { Darwin.exit(Int32(code)) }
}