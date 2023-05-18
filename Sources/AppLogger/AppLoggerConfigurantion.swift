import Foundation

internal class AppLoggerConfigurantion {
    
    static let configuration = AppLoggerConfigurantion()
    
    // MARK: - Configurations Allowed
    
    private var availableContext: [AppLoggerLevel] = [.info, .warning, .error, .custom(prefix: "")]
    
    
    private init() {
        // MARK: private init required to allow just one instance
    }
    
    func setCustomAvailableContext(loggerLevel: [AppLoggerLevel]) {
        self.availableContext = loggerLevel
    }
    
    
    func isContextAvailable(loggerLevel: AppLoggerLevel) -> Bool {
        availableContext.contains(loggerLevel)
    }
    
}
