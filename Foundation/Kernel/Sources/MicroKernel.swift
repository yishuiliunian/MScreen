import Foundation
import Swinject
import UIKit

open class MicroKernel:UIResponder, UIApplicationDelegate {
    public let assembler: Assembler = Assembler()
    override public init() {
        NSLog("The kernel created")
    }
    
    
    /// 单例
    
    public class func shared() -> MicroKernel? {
        if ((UIApplication.shared.delegate?.isKind(of: MicroKernel.self)) != nil) {
            return (UIApplication.shared.delegate as! MicroKernel)
        } else {
            return nil
        }
    }
}
