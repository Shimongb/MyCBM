import AppKit
import Defaults

enum MenuIcon: String, CaseIterable, Identifiable, Defaults.Serializable {
  case mycbm
  case clipboard
  case scissors
  case paperclip

  var id: Self { self }

  var image: NSImage {
    switch self {
    case .mycbm:
      return NSImage(named: .mycbmStatusBar)!
    case .clipboard:
      return NSImage(named: .clipboard)!
    case .scissors:
      return NSImage(named: .scissors)!
    case .paperclip:
      return NSImage(named: .paperclip)!
    }
  }
}
