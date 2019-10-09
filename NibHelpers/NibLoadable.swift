//
//  Copyright © 2017 - 2019 Fish Hook LLC. All rights reserved.
//

import UIKit

/// Adopted by classes that can be loaded from a `UINib`
protocol NibLoadable {
    
    /// The filename of the XIB that corresponds to this object
    ///
    /// - Important: The default implementation returns the object's class name
    static var nibName: String { get }
}

extension NibLoadable {
    
    static var nibName: String { return String(describing: self) }
}
