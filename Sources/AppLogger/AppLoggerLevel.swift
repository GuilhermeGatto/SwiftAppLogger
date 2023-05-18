public enum AppLoggerLevel {
    case info
    case warning
    case error
    case custom(prefix: String)
    
     var prefix: String {
        switch self {
        case .info: return "INFO ℹ️"
        case .warning: return "WARNING ⚠️"
        case .error: return "ERROR ❌"
        case .custom(let prefix): return prefix
        }
    }
    
    var sufix: String {
       switch self {
       case .info: return "END INFO ℹ️"
       case .warning: return "END WARNING ⚠️"
       case .error: return "END ERROR ❌"
       case .custom(let prefix): return "END " + prefix
       }
   }
}

extension AppLoggerLevel: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.prefix == rhs.prefix && lhs.sufix == rhs.sufix
    }
}
