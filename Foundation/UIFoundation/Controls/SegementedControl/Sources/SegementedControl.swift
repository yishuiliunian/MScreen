import SwiftUI

public struct SegementedControl<Data, Content>: View where Data: Hashable, Content: View {
    public let sources: [Data]
    public let selection: Data?
    
    private let itemBuilder: (Data) -> Content
    
    @State private var backgroundColor: Color = Color.black.opacity(0.05)
    
    func pickerBackgroundColor(_ color: Color) -> SegementedControl {
        var view = self
        view._backgroundColor = State(initialValue: color)
        return view
    }
    
    @State private var cornerRedius: CGFloat?
    
    func cornerRedius(_ redius: CGFloat) -> SegementedControl {
        var view = self
        view._cornerRedius = State(initialValue: redius)
        return view
    }
    
    @State private var borderColor: Color?
    
    func borderColor(_ color: Color) -> SegementedControl {
        var view = self
        view._borderColor = State(initialValue: color)
        return view
    }
    
    @State private var borderWidth: CGFloat?
    
    func borderWidth(_ width: CGFloat) -> SegementedControl {
        var view = self
        view._borderWidth = State(initialValue: width)
        return view
    }
    
    private var customIndicator: AnyView? = nil
    
    public init(_ sources: [Data],
                selection: Data?,
                indicatorBuilder: @escaping() -> some View,
                @ViewBuilder itemBuilder: @escaping (Data) -> Content) {
        self.sources = sources
        self.selection = selection
        self.itemBuilder = itemBuilder
        self.customIndicator = AnyView(indicatorBuilder())
    }
    
    public init(_ sources: [Data],
                selection: Data?,
                @ViewBuilder itemBuilder: @escaping (Data) -> Content) {
        self.sources = sources
        self.selection = selection
        self.itemBuilder = itemBuilder
    }
    
    public var body: some View {
        ZStack(alignment: .center, content: {
            if let selection = selection, let selectedIndex = sources.firstIndex(of: selection) {
                if let customIndicator = customIndicator {
                    customIndicator
                } else {
                    GeometryReader { geo in
                        RoundedRectangle(cornerRadius: cornerRedius ?? 6.0)
                            .foregroundColor(.accentColor)
                            .padding(EdgeInsets(top: borderWidth ?? 2.0, leading: borderWidth ?? 2.0, bottom: borderWidth ?? 2.0, trailing: borderWidth ?? 2.0))
                            .frame(width: geo.size.width / CGFloat(sources.count))
                            .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
                            .animation(.spring().speed(1.5))
                            .offset(x: geo.size.width / CGFloat(sources.count) * CGFloat(selectedIndex), y: 0)
                    }.frame(height: 32)
                }
            }
            
            HStack(spacing: 0, content: {
                ForEach(sources, id: \.self) { source in
                    itemBuilder(source)
                }
            })
        }).background(
            RoundedRectangle(cornerRadius: cornerRedius ?? 6.0)
                .fill(
                    backgroundColor
                )
        )
    }
}

