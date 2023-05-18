import Foundation

public class Logger: AppLoggerProtocol {
    private let logHandler = AppLoggerHandler()
    
    public static func log(level: AppLoggerLevel,
                           path: String = #file,
                           function: String = #function,
                           line: Int = #line) {
        Logger().logHandler.handle(level: level,
                                   message: nil,
                                   context: AppLoggerContext(path: path,
                                                             function: function,
                                                             line: line))
    }
    
    public static func log(level: AppLoggerLevel,
                           message: String,
                           path: String = #file,
                           function: String = #function,
                           line: Int = #line) {
        Logger().logHandler.handle(level: level,
                                   message: message,
                                   context: AppLoggerContext(path: path,
                                                             function: function,
                                                             line: line))
    }
}
