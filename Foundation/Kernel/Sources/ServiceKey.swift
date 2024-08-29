//
//  ServiceKey.swift
//  Kernel
//
//  Created by Dong Zhao on 2024/8/21.
//

import Foundation
internal struct ServiceKey {
    internal let serviceType: Any.Type
    internal let name: String?

    internal init(
        serviceType: Any.Type,
        name: String? = nil
    ) {
        self.serviceType = serviceType
        self.name = name
    }
}

// MARK: Hashable
extension ServiceKey: Hashable {
    public func hash(into hasher: inout Hasher) {
        ObjectIdentifier(serviceType).hash(into: &hasher)
        name?.hash(into: &hasher)
    }
}

// MARK: Equatable

func == (lhs: ServiceKey, rhs: ServiceKey) -> Bool {
    return lhs.serviceType == rhs.serviceType
        && lhs.name == rhs.name
}

