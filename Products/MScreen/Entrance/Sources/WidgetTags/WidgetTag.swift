//
//  File.swift
//  CocoaLumberjack
//
//  Created by Dong Zhao on 2024/8/28.
//

import Foundation
import ObjectMapper

struct WidgetTag: Identifiable, Hashable, Mappable {
    
    
    var id: String {
        return identifier
    }
    var name: String!
    var identifier: String!
    init(identifier: String, name: String) {
        self.identifier = identifier
        self.name = name
    }
    
    public func hash(into hasher: inout Hasher) {
        name.hash(into: &hasher)
    }
    
    //MARK: Mappable
    init?(map: ObjectMapper.Map) {
    }
    
    mutating func mapping(map: ObjectMapper.Map) {
        identifier <- map["identifier"]
        name <- map["name"]
    }
}
