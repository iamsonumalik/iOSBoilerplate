//
//  SMView.swift
//  Boilerplate
//
//  Created by Sonu Malik on 11/03/18.
//  Copyright © 2018 Sonu Malik. All rights reserved.
//

import UIKit
class SMView: UIView, SMProtocol {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addAllSubviews();
        self.setConstraints();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addAllSubviews() {
    }
    
    func setConstraints() {
    }
}
