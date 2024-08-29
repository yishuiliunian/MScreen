import SwiftUI
import Swinject
import Kingfisher
import LoggerProtocol
import SegementedControl
import ObjectMapper

struct WidgetSegmentedControl: View {
    @State private var selectedItem: WidgetGalleryDataRow? = nil
    @State var widgetRows: [WidgetGalleryDataRow]
    init(selectedItem: WidgetGalleryDataRow? = nil, widgetRows: [WidgetGalleryDataRow]) {
        self.selectedItem = selectedItem
        self.widgetRows = widgetRows
    }
    

    var body: some View {
        VStack {
            SegementedControl(widgetRows, selection: selectedItem,
                              headerBuilder:  { item in
                VStack {
                    Text(item.tag.name)
                        .font(Font.footnote.weight(.medium))
                        .foregroundStyle(selectedItem == item ? .white : .black)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 8)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }.onTapGesture {
                        withAnimation {
                            selectedItem = item
                        }
                    }
            },
                              contentBuilder:  { item in
                VStack {
                    Text(item.tag.name)
                    Spacer()
                }
            })
        }.padding()
    }
}


struct WidgetsGalleryView: View {
    let dataProvider = WidgetsGalleryDataProvider()
    var body: some View {
        ScrollViewReader { _ in
            VStack() {
                WidgetSegmentedControl(selectedItem: dataProvider.widgetRows.first, widgetRows: dataProvider.widgetRows)
                Spacer()
            }.padding()
        }
    }
}

