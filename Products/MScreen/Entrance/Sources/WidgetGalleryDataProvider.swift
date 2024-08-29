import Foundation
import LoggerProtocol
import ObjectMapper

struct WidgetGalleryDataRow: Identifiable, Hashable {
    static func == (lhs: WidgetGalleryDataRow, rhs: WidgetGalleryDataRow) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        id.hash(into: &hasher)
    }
    
    var id: String {
        return tag.identifier
    }
    
    public var widgets: [WidgetContent]
    public var tag: WidgetTag
    
    init(widgets: [WidgetContent], tag: WidgetTag) {
        self.widgets = widgets
        self.tag = tag
    }
}

struct WidgetGalleryData: Mappable{
    var tags: [WidgetTag]!
    var widgets: [String: [WidgetContent]]!
    
    init?(map: ObjectMapper.Map) {    }
    
    mutating func mapping(map: ObjectMapper.Map) {
        widgets <- map["widgets"]
        tags <- map["tags"]
    }
}


struct WidgetsGalleryDataProvider {
    public var widgetRows: [WidgetGalleryDataRow]
    public init() {
        widgetRows = []
        loadFromLocal()
    }
    
    private mutating func loadFromLocal() {
        let json = defaultJSON()
        if let data = WidgetGalleryData(JSONString: json) {
            var rows = [WidgetGalleryDataRow]()
            for tag in data.tags {
                var row = WidgetGalleryDataRow(widgets: [], tag: tag)
                if let contents = data.widgets[tag.identifier] {
                    row.widgets = contents
                }
                rows.append(row)
            }
            widgetRows = rows
        } else {
            SharedLoggerService()?.error("Load default json error")
        }
    }
    
    
    
    private func defaultJSON() -> String {
        return """
{
    "tags": [
        {
            "identifier": "hot",
            "name": "热门"
        },
        {
            "identifier": "new",
            "name": "最新"
        },
        {
            "identifier": "worker",
            "name": "打工人"
        }
    ],
    "widgets": {
        "hot": [
            {
                "title": "热门",
                "identifier": "hot",
                "showcaseGifURL": "https://github.com/DongZhaoH/Kernel/raw/master/Products/MScreen/Entrance/Sources/WidgetContent/WidgetContent.gif"
            }
        ],
        "new": [
            {
                "title": "最新",
                "identifier": "new",
                "showcaseGifURL": "https://github.com/DongZhaoH/Kernel/raw/master/Products/MScreen/Entrance/Sources/WidgetContent/WidgetContent.gif"
            }
        ],
        "worker": [
            {
                "title": "全部",
                "identifier": "all",
                "showcaseGifURL": "https://github.com/DongZhaoH/Kernel/raw/master/Products/MScreen/Entrance/Sources/WidgetContent/WidgetContent.gif"
            }
        ]
    }
}
"""
    }
}
