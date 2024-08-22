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


open class PlatformDelegateService: NSObject, UIApplicationDelegate {
    open  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        MicroKernel.shared.register(assembly: LoggerAssembly())
        SharedLoggerService()?.verbose(info: "Note")
        return true
    }
}
