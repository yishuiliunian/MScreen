import Kernel
import Swinject

public protocol LoggerProtocol {
    func verbose(info: String)
}


open class LoggerService: LoggerProtocol {
    public func verbose(info: String) {
        print(info)
    }
    
    
}

open class LoggerAssembly: Service {
    open override func assemble(container: Container) {
        container.register(LoggerProtocol.self) { r in
            LoggerService()
        }
    }
}
