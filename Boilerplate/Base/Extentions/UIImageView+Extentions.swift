//
//  UIImageView+Extentions.swift
//  Boilerplate
//
//  Created by Sonu Malik on 11/03/18.
//  Copyright © 2018 Sonu Malik. All rights reserved.
//

import UIKit
extension UIImageView {
    func setTintColor( color : UIColor){
        self.image = self.image?.withRenderingMode(.alwaysTemplate);
        self.tintColor = color;
    }
}

