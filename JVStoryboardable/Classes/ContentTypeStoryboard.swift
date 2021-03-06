import UIKit
import JVContentType

public struct ContentTypeStoryboard: ContentType {
    public static var allTypes = Set<ContentTypeStoryboard>()
    
    public var contentTypeId: String?
    public let storyboard: UIStoryboard
    
    public init(contentTypeId: String, storyboard: UIStoryboard) {
        self.contentTypeId = contentTypeId
        self.storyboard = storyboard
    }
    
    public static func determineStoryboard(contentTypeId: String) -> UIStoryboard {
        return getContentType(contentTypeId: contentTypeId).storyboard
    }
    
}
