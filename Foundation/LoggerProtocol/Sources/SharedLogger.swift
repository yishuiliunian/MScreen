import Kernel

public func SharedLoggerService() -> LoggerProtocol? {
    return MicroKernel.shared.getService(LoggerProtocol.self)
}
