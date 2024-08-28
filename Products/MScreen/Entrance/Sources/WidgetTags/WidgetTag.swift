//
//  File.swift
//  CocoaLumberjack
//
//  Created by Dong Zhao on 2024/8/28.
//

import Foundation

struct WidgetTag: Identifiable, Hashable {
    var id: String {
        return name
    }
    var name: String
    var identifier: String
    init(identifier: String, name: String) {
        self.identifier = identifier
        self.name = name
    }
    
    static func allTags() -> [WidgetTag] {
        return [
            WidgetTag(identifier: "hot", name: "热门"),
            WidgetTag(identifier: "new", name: "最新"),
            WidgetTag(identifier: "all", name: "全部")
        ]
    }
    
    public func hash(into hasher: inout Hasher) {
        name.hash(into: &hasher)
    }
}
