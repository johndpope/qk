// © 2014 George King.
// Permission to use this file is granted in license-qk.txt.


#if os(OSX)
  import AppKit
  typealias CRColor = NSColor
  #else
  import UIKit
  typealias CRColor = UIColor
#endif


extension CRColor {
  
  class var clear:CRColor { return self.clearColor(); }
  class var w:CRColor     { return self.whiteColor(); }
  class var k:CRColor     { return self.blackColor(); }
  class var r:CRColor     { return self.redColor(); }
  class var g:CRColor     { return self.greenColor(); }
  class var b:CRColor     { return self.blueColor(); }
  class var c:CRColor     { return self.cyanColor(); }
  class var m:CRColor     { return self.magentaColor(); }
  class var y:CRColor     { return self.yellowColor(); }

  convenience init(_ r:CGFloat, _ g:CGFloat, _ b:CGFloat, _ a:CGFloat=1) {
    self.init(red:r, green:g, blue:b, alpha:a)
  }

  convenience init(_ l:CGFloat, _ a:CGFloat=1) {
    self.init(white:l, alpha:a)
  }

  convenience init(r:CGFloat, a:CGFloat=1) { self.init(r, 0, 0, a) }
  convenience init(g:CGFloat, a:CGFloat=1) { self.init(0, g, 0, a) }
  convenience init(b:CGFloat, a:CGFloat=1) { self.init(0, 0, b, a) }

  var a:Flt {
    var l:Flt = 0, a:Flt = 0
    let ok = self.getWhite(&l, alpha:&a)
    assert(ok)
    return a
  }
  
  var l:Flt {
    var l:Flt = 0, a:Flt = 0
    let ok = self.getWhite(&l, alpha:&a)
    assert(ok)
    return l
  }
  
  var r:Flt {
    var r:Flt = 0, g:Flt = 0, b:Flt = 0, a:Flt = 0
    let ok = self.getRed(&r, green:&g, blue:&b, alpha:&a)
    assert(ok)
    return r
  }
  
  var g:Flt {
    var r:Flt = 0, g:Flt = 0, b:Flt = 0, a:Flt = 0
    let ok = self.getRed(&r, green:&g, blue:&b, alpha:&a)
    assert(ok)
    return g
  }
  
  var b:Flt {
    var r:Flt = 0, g:Flt = 0, b:Flt = 0, a:Flt = 0
    let ok = self.getRed(&r, green:&g, blue:&b, alpha:&a)
    assert(ok)
    return b
  }
  
}