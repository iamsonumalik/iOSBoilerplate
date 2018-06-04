//
//  UITextField+Extention .swift
//  Boilerplate
//
//  Created by Sonu Malik on 04/06/18.
//  Copyright © 2018 Sonu Malik. All rights reserved.
//

import UIKit
extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedStringKey.foregroundColor: newValue!])
        }
    }
}
