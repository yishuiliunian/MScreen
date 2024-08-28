import Kernel
import LoggerProtocol


open class LoggerService: LoggerProtocol {
    public func verbose(info: String) {
        print(info)
    }
}

