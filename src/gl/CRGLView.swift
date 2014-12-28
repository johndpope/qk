// © 2014 George King.
// Permission to use this file is granted in license-qk.txt.


class CRGLView: CRView {

  #if os(OSX)
    override func makeBackingLayer() -> CALayer { return GLLayer() }
    #else
    override class func layerClass() -> AnyClass { return GLLayer }
  #endif

  required init(coder: NSCoder) { fatalError() }
  
  init(n: String, format: PixFmt) {
    super.init(frame: frameInit)
    self.name = n
    #if os(OSX)
      wantsLayer = true // layer-backed; if we want layer-hosting behavior, set layer explicitly first.
      layer!.autoresizingMask = CAAutoresizingMask(CAAutoresizingMask.LayerWidthSizable.rawValue | CAAutoresizingMask.LayerHeightSizable.rawValue) // ?
      layer!.needsDisplayOnBoundsChange = true // ?
    #endif
    glLayer.setup(format)
  }

  override var wantsUpdateLayer: Bool { return true } // updateLayer will get called.
  var glLayer: GLLayer {
    get { return layer as GLLayer }
    set { layer = newValue }
  }

  var drawableSize: V2F32 { return glLayer.drawableSize }

}
