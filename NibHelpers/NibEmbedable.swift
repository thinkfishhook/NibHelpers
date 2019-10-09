//
//  Copyright © 2017 - 2019 Fish Hook LLC. All rights reserved.
//

import UIKit

protocol NibEmbedable: NibLoadable where Self: UIView {
    
    init(frame: CGRect)
    init?(coder aDecoder: NSCoder)
}

extension NibEmbedable {
    
    func commonInitialize()
    {
        let bundle = Bundle(for: type(of: self))
        let topLevelObjects = bundle.loadNibNamed(Self.nibName, owner: self, options: nil)
        guard let view = topLevelObjects?.first as? UIView else { return }
        view.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(view)
        self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
