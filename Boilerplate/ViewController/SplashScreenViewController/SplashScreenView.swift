//
//  SplashScreenView.swift
//  Boilerplate
//
//  Created by Sonu Malik on 11/03/18.
//  Copyright © 2018 Sonu Malik. All rights reserved.
//

import UIKit
class SplashScreenView: SMView {
    let label : UILabel = {
       let label = UILabel()
        label.text = "Design View here."
        return label
    }()
    
    override func addAllSubviews() {
        self.addSubview(label)
    }
    override func setConstraints() {
        self.label.anchorCenterSuperview()
    }
}
