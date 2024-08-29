import SwiftUI

public struct SegementedControl<Data, SegmentHeader, SegmentContent>:
    View where Data: Hashable,
               SegmentHeader: View,
               SegmentContent: View
{
    // The data sources.
    public let sources: [Data]
    
    // The selection data. If nil, the first item will be selected.
    public var selection: Data?
    
    // The header builder.
    private let headerBuilder: (Data) -> SegmentHeader
    // The content builder.
    private let contentBuilder: (Data) -> SegmentContent
    
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
                @ViewBuilder headerBuilder: @escaping (Data) -> SegmentHeader,
                @ViewBuilder contentBuilder: @escaping (Data) -> SegmentContent) {
        self.sources = sources
        self.selection = selection
        self.contentBuilder = contentBuilder
        self.headerBuilder = headerBuilder
    }
    
    private var contentView: some View {
        TabView {
            ForEach(sources, id: \.self) { source in
                contentBuilder(source)
                    .frame(width: UIScreen.main.bounds.width)
            }
        }.tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        
    }
    
    private var headerView: some View {
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
                    headerBuilder(source)
                }
            })
        }).background(
            RoundedRectangle(cornerRadius: cornerRedius ?? 6.0)
                .fill(
                    backgroundColor
                )
        )
    }
    
    public var body: some View {
        headerView
        contentView
    }
    
}

