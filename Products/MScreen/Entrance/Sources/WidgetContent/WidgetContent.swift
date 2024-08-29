import Foundation
import ObjectMapper

struct WidgetContent: Mappable {
    var title: String!
    var identifier: String!
    var showcaseGifURL: String?
    
    init?(map: ObjectMapper.Map) {
        
    }
    
    mutating func mapping(map: ObjectMapper.Map) {
        title <- map["title"]
        identifier <- map["identifier"]
        showcaseGifURL <- map["showcaseGifURL"]
    }
    
}
