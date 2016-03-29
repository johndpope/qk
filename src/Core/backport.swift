// © 2016 George King. Permission to use this file is granted in license-qk.txt.

// backport swift 3.0 features to swift 2.0 wherever possible.


typealias BidirectionalIndex = BidirectionalIndexType
typealias Collection = CollectionType
typealias ErrorProtocol = ErrorType
typealias Sequence = SequenceType
typealias OptionSet = OptionSetType
typealias OutputStream = OutputStreamType
typealias FloatingPoint = FloatingPointType
typealias IteratorProtocol = GeneratorType


extension Array {
  init(repeating: Element, count: Int) { self.init(count: count, repeatedValue: repeating) }
}


extension Collection {
  func sorted(@noescape isOrderedBefore: (Self.Generator.Element, Self.Generator.Element) -> Bool) -> [Generator.Element] {
    return sort(isOrderedBefore)
  }
}

extension Collection where Self.Generator.Element: Comparable {
    func sorted() -> [Generator.Element] { return sort() }
}


extension Dictionary {
  func index(forKey key: Key) -> Index? { return indexForKey(key) }
  mutating func remove(at index: Index) -> (Key, Value) { return removeAtIndex(index) }
  mutating func removeValue(forKey key: Key) -> Value? { return removeValueForKey(key) }
}


extension Sequence {
  func makeIterator() -> Generator { return generate() }

  func enumerated() -> EnumerateSequence<Self> { return self.enumerate() }
}


extension Set {
  func index(of el: Element) -> Index? { return indexOf(el) }
  mutating func remove(at: Index) -> Element { return removeAtIndex(at) }
}


extension String {

  init(cString: UnsafePointer<Int8>) {
    let (s, _) = String.fromCStringRepairingIllFormedUTF8(cString)
    self = s!
  }

  init?(validatingUTF8: UnsafePointer<CChar>) {
    guard let s = String.fromCString(validatingUTF8) else { return nil }
    self = s
  }

  init(repeating: Character, count: Int) {
    self.init(count: count, repeatedValue: repeating)
  }
}


extension UnsafeMutablePointer {
  var pointee: Memory { return memory }
}