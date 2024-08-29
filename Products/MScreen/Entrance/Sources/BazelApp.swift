import SwiftUI
import Swinject
import Kingfisher
import LoggerProtocol
import SegementedControl



@main
struct BazelApp: App {
    @UIApplicationDelegateAdaptor(ScreenAppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            TabView {
                WidgetsGalleryView()
                    .tabItem {
                        Label("Gallery", systemImage: "list.dash")
                    }
            }
        }
    }
}

