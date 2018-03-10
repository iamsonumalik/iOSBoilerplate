//
//  SplashScreenController.swift
//  Boilerplate
//
//  Created by Sonu Malik on 11/03/18.
//  Copyright © 2018 Sonu Malik. All rights reserved.
//

import UIKit
class SplashScreenViewController: SMViewController {
    
    let splashScreenView : SplashScreenView = {
        let view = SplashScreenView()
        return view;
    }()
    
    override func addAllSubviews() {
        self.view.addSubview(splashScreenView)
    }
    
    override func setConstraints() {
        self.splashScreenView.fillSuperview()
    }
}
