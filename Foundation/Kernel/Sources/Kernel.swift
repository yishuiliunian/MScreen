import Foundation
import Swinject
import UIKit

class MicroKernel:UIResponder, UIApplicationDelegate {
    public let assembler: Assembler = Assembler()
    override public init() {
        
    }
}
