// © 2014 George King.
// Permission to use this file is granted in license-qk.txt.

#if os(OSX)
  import AppKit
  typealias CREvent = NSEvent
  #else
  import UIKit
  typealias CREvent = UIEvent
#endif


func sysTime() -> Time {
  return NSProcessInfo.processInfo().systemUptime
}

// note: this is lazily evaluated, so it must be accessed at launch time to initialize accurately.
let appLaunchSysTime = sysTime()

func appTime() -> Time {
  return sysTime() - appLaunchSysTime
}

extension CREvent {
  var appTime: Time { return timestamp - appLaunchSysTime } // timestamp is relative to systemUptime.
}
