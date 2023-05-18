import Foundation

internal struct AppLoggerContext {
    let path: String
    let function: String
    let line: Int
    
    var description: String {
        return "\((path as NSString).lastPathComponent):: onLine:\(line):: onFunction: \(function)"
    }
    
    var file: String {
        return (path as NSString).lastPathComponent
    }
    
}
