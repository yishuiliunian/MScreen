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

open class LoggerAssembly: ProcessAssembly {
    public init() {
        super.init(name: "LogService")
    }
    
    public override func assemble(container: ServiceContainer) {
        super.assemble(container: container)
        container.register(interface: LoggerProtocol.self, service: LoggerService())
        
    }
}

public func SharedLoggerService() -> LoggerProtocol? {
    return MicroKernel.shared.getService(LoggerProtocol.self)
}
