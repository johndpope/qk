// © 2016 George King. Permission to use this file is granted in license-qk.txt.


struct DictOfSet<Key: Hashable, SetElement: Hashable>: Collection {

  typealias SetType = SetRef<SetElement>
  typealias DictType = [Key:SetType]
  typealias Index = DictType.Index
  typealias Element = DictType.Element
  typealias Generator = DictType.Generator

  private var dict: DictType = [:]

  init() {}

  init(minimumCapacity: Int) {
    dict = DictType(minimumCapacity: minimumCapacity)
  }

  var count: Int { return dict.count }

  var startIndex: Index { return dict.startIndex }
  var endIndex: Index { return dict.endIndex }

  var isEmpty: Bool { return dict.isEmpty }

  var keys: LazyMapCollection<DictType, Key> { return dict.keys }

  var values: LazyMapCollection<DictType, SetType> { return dict.values }

  func generate() -> Generator { return dict.generate() }

  @warn_unused_result
  func index(forKey: Key) -> Index? { return dict.index(forKey: forKey) }

  mutating func popFirst() -> Element? { return dict.popFirst() }

  mutating func removeAll(keepCapacity keepCapacity: Bool = false) {
    dict.removeAll(keepCapacity: keepCapacity)
  }

  mutating func remove(at: Index) -> Element { return dict.remove(at: at) }

  mutating func removeValue(forKey: Key) -> SetType? { return dict.removeValue(forKey: forKey) }

  subscript (index: Index) -> Element { return dict[index] }

  subscript (key: Key) -> SetType? {
    get { return dict[key] }
    set { dict[key] = newValue }
  }

  mutating func insert(key: Key, member: SetElement) {
    if let set = dict[key] {
      set.insert(member)
    } else {
      let set = SetType()
      set.insert(member)
      dict[key] = set
    }
  }
}