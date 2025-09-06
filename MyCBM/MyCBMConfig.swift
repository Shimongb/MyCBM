import Foundation

/// Configuration for standalone MyCBM executable
struct MyCBMConfig {
    /// App identifier used for preferences and windows
    static let appIdentifier = "com.mycbm.app"
    
    /// Process name shown in Activity Monitor
    static let processName = "MyCBM"
    
    /// Preferences domain (separate from original MyCBM)
    static let preferenceDomain = "com.mycbm.preferences"
    
    /// User-friendly app name
    static let displayName = "My CBM"
}