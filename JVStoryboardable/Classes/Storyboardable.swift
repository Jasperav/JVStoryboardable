import UIKit

public protocol Storyboardable where Self: UIViewController {
    static var contentTypeStoryboardId: String { get }
}

public extension Storyboardable {
    static func determineStoryboard() -> UIStoryboard {
        return contentTypeStoryboardId.contentTypeStoryboard.storyboard
    }
    
    /// Make sure the storyboard id holds the same name as the class name
    static func instantiateViewController() -> Self {
        let className = String(describing: Self.self)
        
        /// 1. Determine the storyboard the viewController is in.
        return determineStoryboard()
            
            /// 2. Instantiate it from the storyboard.
            .instantiateViewController(
                
                /// 3. As already mentioned, the className should be equal to the storyboard id.
                withIdentifier: className)
            
                    /// 4. Finally we can safely cast it.
                    as! Self
    }
}
