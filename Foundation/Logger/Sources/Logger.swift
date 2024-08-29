import Kernel
import LoggerProtocol


open class LoggerService: LoggerProtocol {
    public func verbose(info: String) {
        print(info)
    }
    
    public func error(_ info: String) {
        print("Error: \(info)")
    }
    
}

