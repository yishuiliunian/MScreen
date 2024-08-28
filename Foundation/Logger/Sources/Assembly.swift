//
//  Assembly.swift
//  Logger
//
//  Created by Dong Zhao on 2024/8/27.
//

import Foundation
import LoggerProtocol
import Kernel


open class LoggerAssembly: ProcessAssembly {
    public init() {
        super.init(name: "LogService")
    }
    
    public override func assemble(container: ServiceContainer) {
        super.assemble(container: container)
        container.register(interface: LoggerProtocol.self, service: LoggerService())
        
    }
}

