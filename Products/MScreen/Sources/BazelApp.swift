import SwiftUI
import Swinject

struct ContentView: View {
    var body: some View {
        VStack {
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

