public struct AppLogger {

    public static let logger = AppLogger()
    
    // MARK: - FilePrivate Properties
    private let configuration = AppLoggerConfigurantion.configuration
    
    private init() {}
        
    public func showContextFor(levelLogger: [AppLoggerLevel]) {
        configuration.setCustomAvailableContext(loggerLevel: levelLogger)
    }
    
}
