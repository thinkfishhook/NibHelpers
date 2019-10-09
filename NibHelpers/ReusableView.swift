//
//  Copyright © 2017 - 2019 Fish Hook LLC. All rights reserved.
//

import UIKit

/// Adopted by classes that represent reusable view types, such as
/// `UITableViewCell` or `UICollectionViewCell` subclasses.
protocol ReusableView where Self: UIView {
    
    /// The reuse identifier used to register with a "recycling" view, such as
    /// `UITableView` or `UICollectionView`.
    ///
    /// - Important: The default implementation returns the object's class name
    static var defaultReuseIdentifier: String { get }
}

extension ReusableView {
    
    static var defaultReuseIdentifier: String { return String(describing: self) }
}
