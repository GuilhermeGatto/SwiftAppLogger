import Foundation

internal class AppLoggerHandler {
    let separator = " ========== "
    let breakline = "\n"

    func handle(level: AppLoggerLevel,
                message: String?,
                context: AppLoggerContext) {
        var log = separator
        log += level.prefix
        log += separator
        log += breakline
        
        if let message = message {
            log += breakline
            log += "   LOGGER MESSAGE: "
            log += message
            log += breakline
        }
        
        if AppLoggerConfigurantion.configuration.isContextAvailable(loggerLevel: level) {
            log += breakline
            log += "   --- CONTEXT DETAIL ---"
            log += breakline
            log += "   -file:: " + context.file
            log += breakline
            log += "   -function:: " + context.function
            log += breakline
            log += "   -line:: \(context.line)"
            log += breakline
        }
        
        log += breakline
        log += separator
        log += level.sufix
        log += separator
        log += breakline
        
        #if DEBUG
        print(log)
        #endif
    }
}
