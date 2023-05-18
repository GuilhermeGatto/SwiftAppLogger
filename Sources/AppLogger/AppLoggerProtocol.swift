protocol AppLoggerProtocol {
    static func log(level: AppLoggerLevel,
                    path: String,
                    function: String,
                    line: Int)
    
    static func log(level: AppLoggerLevel,
                    message: String,
                    path: String,
                    function: String,
                    line: Int)
}
