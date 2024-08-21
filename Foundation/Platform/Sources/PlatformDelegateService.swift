//
//  PlatformDelegateService.swift
//  Platform
//
//  Created by Dong Zhao on 2024/8/21.
//

import Foundation
import Kernel
import UIKit
import Logger

open class PlatformDelegateService: DelegateService {
    open  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        MicroKernel.assembler.apply(assembly: LoggerAssembly(name: "xxxx"))
        let logger = Platform.assembler.resolver.resolve(LoggerProtocol.self)
        logger?.verbose(info: "Logger !")
        return true
    }
}


