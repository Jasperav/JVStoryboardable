public extension String {
    var contentTypeStoryboard: ContentTypeStoryboard {
        return ContentTypeStoryboard.getContentType(contentTypeId: self)
    }
}
