//
//  UIViewController+Extentions.swift
//  Boilerplate
//
//  Created by Sonu Malik on 11/03/18.
//  Copyright © 2018 Sonu Malik. All rights reserved.
//

import UIKit
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func toast(message : String ,title : String ,backgroundColor  : UIColor) {
        
        let toast : UIView = {
            let view = UIView()
            view.backgroundColor = backgroundColor.withAlphaComponent(0.95)
            let titleLabel = UILabel();
            titleLabel.text = title
            titleLabel.font = UIFont.init(name: "Lato-Bold", size: 14)
            titleLabel.textColor = .white
            
            let descriptionLabel = UITextView();
            descriptionLabel.isEditable = false
            descriptionLabel.isSelectable = false
            descriptionLabel.backgroundColor = .clear
            descriptionLabel.text = message
            descriptionLabel.textContainerInset = .init(top: 0, left: -4, bottom: 0, right: -4)
            descriptionLabel.font = UIFont.init(name: "Lato-Bold", size: 12)
            descriptionLabel.textColor = .white
            
            view.addSubview(titleLabel)
            view.addSubview(descriptionLabel)
            
            titleLabel.anchor(view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, topConstant: 10, leftConstant: 20, rightConstant: 10, heightConstant: 20)
            descriptionLabel.anchor(titleLabel.bottomAnchor, left: titleLabel.leftAnchor, bottom: view.bottomAnchor, right: titleLabel.rightAnchor)
            return view;
        }()
        
        self.view.addSubview(toast)
        toast.frame = CGRect.init(x: 0, y: UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: 60);
        
        UIView.animate(withDuration: 0.5, animations: {
            toast.frame = CGRect.init(x: 0, y: UIScreen.main.bounds.height - 60, width: UIScreen.main.bounds.width, height: 60);
        })
        self.view.bringSubview(toFront: toast)
        let when = DispatchTime.now() + 3
        DispatchQueue.main.asyncAfter(deadline: when){
            // your code with delay
            toast.removeFromSuperview();
        }
    }
    
    func setProgress() ->  UIButton{
        let indicatorView = UIButton(frame : self.view.bounds);
        indicatorView.backgroundColor = UIColor.init(white: 1, alpha: 0.5)
        
        self.view.addSubview(indicatorView)
        indicatorView.anchor(self.view.topAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, topConstant: 80, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0);
        return indicatorView
    }
}
