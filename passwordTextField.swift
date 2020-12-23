//
//  passwordtextField.swift
//  part1
//
//  Created by prakash on 23/12/20.
//

import UIKit
class passwordTextField: UITextField
{
    init(frame: CGRect = .zero, textsize: CGFloat = 24, placeHolder:String = "type here",backgroundColor:UIColor = .white, textColor:UIColor = .black, cornerradius: CGFloat = 8) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = self.font?.withSize(textsize)
        self.placeholder = placeHolder
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.layer.cornerRadius = cornerradius
        self.isSecureTextEntry = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
