import Foundation
import Swinject
import UIKit

/// TODO: @stone 需要考虑 Kernel 是否能够继承自 UIApplicationDelegate，一个很严重的问题是，UIApplication.shared.delegate
/// 拿到之后不是一个MicroKernel的实现。应该是系统中间做了桥接。并且隐藏了其中的桥接关系。之前没有用 SwiftUI 的时候是可以的。但是使用了，SwiftUI之后，整个系统的机制变了。
open class MicroKernel:UIResponder, UIApplicationDelegate {
    public static let assembler: Assembler = Assembler()
    static var singlontonKernel: MicroKernel?
    override public init() {
        
    }
    
    
    /// 单例
    
    public class func shared() -> MicroKernel? {
        return singlontonKernel
    }
}
