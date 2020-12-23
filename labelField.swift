//
//  labelField.swift
//  part1
//
//  Created by prakash on 23/12/20.
//

import UIKit
class labelField: UILabel
{
    init( frame: CGRect = .zero,text: String = "default",textsize: CGFloat = 24,backgroundColor:UIColor = .white, textcolor:UIColor = .black, cornerradius: CGFloat = 8)
    {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.textColor = textcolor
        self.font = self.font?.withSize(textsize)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerradius
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.borderWidth = 1.0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
