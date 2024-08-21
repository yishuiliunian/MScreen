import Foundation
import Swinject
import UIKit

/// TODO: @stone 需要考虑 Kernel 是否能够继承自 UIApplicationDelegate，一个很严重的问题是，UIApplication.shared.delegate
/// 拿到之后不是一个MicroKernel的实现。应该是系统中间做了桥接。并且隐藏了其中的桥接关系。之前没有用 SwiftUI 的时候是可以的。但是使用了，SwiftUI之后，整个系统的机制变了。
///
/// 这里把核心的集成功能放到了类上面，之前尝试过使用单例，但是没走通。
open class MicroKernel:UIResponder, UIApplicationDelegate {
    public static let shared = MicroKernel()
    private var assemblies = [ProcessAssembly]()
    private let container: ServiceContainer = ServiceContainer()
    override public init() {}
    
    
    /// 注册一个服务
    /// - Parameter service: 服务
    public func register(assembly: ProcessAssembly) {
        assemblies.append(assembly)
        assemble(assembly: assembly)
    }
    
    /// Retrieves the instance with the specified service type.
    ///
    /// - Parameter serviceType: The service type to resolve.
    ///
    /// - Returns: The resolved service type instance, or nil if no registration for the service type
    ///            is found in the ``Container``.
    public func getService<Service>(_ serviceType: Service.Type) -> Service? {
        return container.resolve(serviceType)
    }
    
    
    private func assemble(assembly: ProcessAssembly) {
        assembly.assemble(container: container)
    }
}
