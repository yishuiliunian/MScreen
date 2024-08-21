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
/// 基类使用 NSObject，主要是为了兼容一些 OC 混编的情况下，要求对象必须是 NSObject
open class Process:NSObject, Assembly {
    var name: String
    public override init() {
        name = "Default"
        super.init()
    }
    public init(name: String) {
        self.name = name
    }
    
    open func assemble(container: Container) {
        
    }
}
