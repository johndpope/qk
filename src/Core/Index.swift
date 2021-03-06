// © 2014 George King. Permission to use this file is granted in license-qk.txt.


class Index<T: Hashable> {
  var vals: [T] = []
  var indexes: [T:Int] = [:]
  
  init(_ vals: [T]) {
    self.vals = vals
    self.indexes = vals.enumerated().mapToDict { ($1, $0) }
  }
  

  var count: Int {
    assert(vals.count == indexes.count)
    return vals.count
  }
  
  func val(_ i: Int) -> T { return vals[i] }
  
  @warn_unused_result
  func index(_ val: T) -> Int? { return indexes[val] }
  
  @warn_unused_result
  func reg(_ val: T) -> Int {
    let oi = indexes[val]
    if let i = oi {
      return i
    } else {
        let i = count
      vals.append(val)
      indexes[val] = i
      return i
    }
  }
}

