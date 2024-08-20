//
//  Process.swift
//  Kernel
//
//  Created by Dong Zhao on 2024/8/20.
//

import Foundation
import Swinject


/// 这是对于处理一些任务的基础抽象。我们默认所有的功能都是在处理一些事情。
/// 使用 Process 来代表这些处理过程，或者长期存在的服务能力。
open class Process: Assembly {
    var name: String
    public init(name: String) {
        self.name = name
    }
    
    open func assemble(container: Container) {
        
    }
}
