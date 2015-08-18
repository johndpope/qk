// © 2014 George King. Permission to use this file is granted in license-qk.txt.

import Foundation


extension Dictionary {
  
  func contains(key: Key) -> Bool {
    return self[key] != nil
  }
}


extension Dictionary where Key: Comparable {
  var valsSortedByKey: [Value] {
    let s = sort {
      (a: (k: Key, v: Value), b: (k: Key, v: Value)) in
      return a.k < b.k
    }
    return s.map() {
      (_, v) in return v
    }
  }
}