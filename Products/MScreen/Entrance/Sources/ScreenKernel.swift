//
//  ScreenKernel.swift
//  iOSApp
//
//  Created by Dong Zhao on 2024/8/20.
//

import Foundation
import Platform
import UIKit
import Logger

open class ScreenKernel: Platform {
    open  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        NSLog("Application did started!")
        
        assembler.apply(assembly: LoggerAssembly(name: "LoggerService"))
        
        
        let logger = ScreenKernel.shared()?.assembler.resolver.resolve(LoggerService.self)
        logger?.verbose(info: "Logger !")
        
        return true
    }
    
}
