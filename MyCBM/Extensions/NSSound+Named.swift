import AppKit.NSSound

extension NSSound {
  // For standalone executable, use embedded sounds or create programmatically
  static let knock: NSSound = {
    // Try multiple methods to find sound files for standalone executable
    var soundURL: URL?
    
    // Method 1: Try relative to current executable
    if let executablePath = Bundle.main.executablePath {
      let executableDir = URL(fileURLWithPath: executablePath).deletingLastPathComponent()
      soundURL = executableDir.appendingPathComponent("Sounds/Knock.caf")
    }
    
    // Method 2: Try relative to process path
    if soundURL == nil || !FileManager.default.fileExists(atPath: soundURL!.path) {
      let processPath = ProcessInfo.processInfo.arguments.first ?? ""
      let processDir = URL(fileURLWithPath: processPath).deletingLastPathComponent()
      soundURL = processDir.appendingPathComponent("Sounds/Knock.caf")
    }
    
    // Method 3: Try current working directory
    if soundURL == nil || !FileManager.default.fileExists(atPath: soundURL!.path) {
      soundURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
        .appendingPathComponent("Sounds/Knock.caf")
    }
    
    if let url = soundURL, FileManager.default.fileExists(atPath: url.path),
       let sound = NSSound(contentsOf: url, byReference: true) {
      return sound
    }
    
    // Fallback to system sound
      return NSSound(named: NSSound.Name.clipboard) ?? NSSound()
  }()
  
  static let write: NSSound = {
    // Try multiple methods to find sound files for standalone executable
    var soundURL: URL?
    
    // Method 1: Try relative to current executable
    if let executablePath = Bundle.main.executablePath {
      let executableDir = URL(fileURLWithPath: executablePath).deletingLastPathComponent()
      soundURL = executableDir.appendingPathComponent("Sounds/Write.caf")
    }
    
    // Method 2: Try relative to process path
    if soundURL == nil || !FileManager.default.fileExists(atPath: soundURL!.path) {
      let processPath = ProcessInfo.processInfo.arguments.first ?? ""
      let processDir = URL(fileURLWithPath: processPath).deletingLastPathComponent()
      soundURL = processDir.appendingPathComponent("Sounds/Write.caf")
    }
    
    // Method 3: Try current working directory
    if soundURL == nil || !FileManager.default.fileExists(atPath: soundURL!.path) {
      soundURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
        .appendingPathComponent("Sounds/Write.caf")
    }
    
    if let url = soundURL, FileManager.default.fileExists(atPath: url.path),
       let sound = NSSound(contentsOf: url, byReference: true) {
      return sound
    }
    
    // Fallback to system sound
      return NSSound(named: NSSound.Name.clipboard) ?? NSSound()
  }()
}
