//
//  SMViewController.swift
//  Boilerplate
//
//  Created by Sonu Malik on 11/03/18.
//  Copyright © 2018 Sonu Malik. All rights reserved.
//

import UIKit
class SMViewController: UIViewController, SMProtocol {
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround();
        self.addAllSubviews()
        self.setConstraints()
    }
    
    func addAllSubviews() {
    }
    
    func setConstraints() {
    }
}
