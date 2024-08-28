import SwiftUI
import Swinject
import Kingfisher
import LoggerProtocol
import SegementedControl


struct WidgetSegmentedContro: View {
    @State private var selectedItem: WidgetTag? = WidgetTag.allTags().first
    var body: some View {
        VStack {
            SegementedControl(WidgetTag.allTags(), selection: selectedItem) { item in
                Text(item.name)
                    .font(Font.footnote.weight(.medium))
                    .foregroundStyle(selectedItem == item ? .white : .black)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 8)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .onTapGesture {
                        withAnimation {
                            selectedItem = item
                        }
                    }
                
            }.padding()
        }
    }
}

struct PlayButton: View {
    @Binding var isPlaying: Bool
    var body: some View {
        Button {
            self.isPlaying.toggle()
            SharedLoggerService()?.verbose(info: "Toggle Play Button \(isPlaying)")
        } label: {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle")
        }

    }
}

struct PlayState {
    var isPlaying: Bool = false
}

struct ContentView: View {
    @State private var palyState = PlayState()
    @State private var isPlaying: Bool = false
    var body: some View {
        ScrollViewReader { _ in
            VStack() {
                WidgetSegmentedContro()
                Spacer()
            }.padding()
        }
    }
}

struct WidgetsListView: View {
    var body: some View {
        VStack {
            KFImage(URL(string:"https://p0.itc.cn/images01/20220125/f9e51d106a97408296b05784e3040d1c.jpeg"))
            Text("Widgets List")
        }
    }
}

@main
struct BazelApp: App {
    @UIApplicationDelegateAdaptor(ScreenAppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "list.dash")
                    }
                WidgetsListView()
                    .tabItem {
                        Label("Widgets", systemImage: "square.and.pencil")
                    }
            }
        }
    }
    func test() -> Void {
        
    }
}

