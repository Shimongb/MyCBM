import SwiftUI
import Defaults

@main
struct MyCBMApp: App {
  @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

  init() {
    ProcessInfo.processInfo.processName = "MyCBM"
    NSApplication.shared.setActivationPolicy(.accessory)
  }

  @State private var hiddenMenu: Bool = false

  var body: some Scene {
    MenuBarExtra("", isInserted: $hiddenMenu) {
      EmptyView()
    }
  }
}
