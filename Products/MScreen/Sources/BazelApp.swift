import SwiftUI
import Swinject
import Kingfisher

struct ContentView: View {
    var body: some View {
        VStack {
            KFImage(URL(string:"https://p0.itc.cn/images01/20220125/f9e51d106a97408296b05784e3040d1c.jpeg"))
            Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Hello, world!")
        }
    }
}

@main
struct BazelApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    func test() -> Void {
        Swinject.Container()
    }
}

