//
//  Button.swift
//  part1
//
//  Created by prakash on 23/12/20.
//

import UIKit
class Button : UIButton
{
    init(frame: CGRect = .zero,textsize :CGFloat = 20, text: String = "Default", backgroundColor:UIColor = .darkText, textColor:UIColor = .white, cornerradius: CGFloat = 8) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = cornerradius
        self.setTitle(text, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font =  UIFont(name: text, size: 20)
        self.setTitleColor(textColor, for: .normal)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    

