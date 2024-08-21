//
//  ServiceContainer.swift
//  Kernel
//
//  Created by Dong Zhao on 2024/8/21.
//

import Foundation
public class ServiceContainer {
    internal var services = [ServiceKey: Any]()
    internal init() {
    }

    private func _register(_ service: Any, for serviceKey: ServiceKey) {
        services[serviceKey] = service
    }
    
    public func register<Interface>(interface: Interface.Type, service: Any) {
        let key = ServiceKey(serviceType: interface)
        if services.contains(where: { $0.key == key }) {
            // TODO: add warning log @stone
        }
        _register(service, for: key)
    }
    
    public func resolve<Interface>(_ serviceType: Interface.Type) -> Interface? {
        let key = ServiceKey(serviceType: Interface.self)
        return services[key] as? Interface
    }
}
