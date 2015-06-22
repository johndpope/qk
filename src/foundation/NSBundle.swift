// © 2014 George King.
// Permission to use this file is granted in license-qk.txt.

import Foundation


extension NSBundle {

  class func resPath(name: String) -> String {
    return mainBundle().pathForResource(name, ofType: nil)!
  }

  class func textNamed(name: String) -> String {
    let p = resPath(name)
    var e: NSError?
    let s: String?
    do {
      s = try String(contentsOfFile: p, encoding: NSUTF8StringEncoding)
    } catch var error as NSError {
      e = error
      s = nil
    }
    check(e, message: "could not read resource text: \(name) error: \(e)")
    return s!
  }
}
