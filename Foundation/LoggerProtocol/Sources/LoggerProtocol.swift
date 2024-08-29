public protocol LoggerProtocol {
    // Write a verbose level log
    func verbose(info: String)
    // Write a error level log
    func error(_ info: String)
}
