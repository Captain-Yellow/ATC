//
//  CustomFields.swift
//  ATC
//
//  Created by Mohammad Afshar on 13/05/2024.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .secondarySystemBackground
        autocorrectionType = .no
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        leftViewMode = .always
        autocapitalizationType = .none
        layer.cornerRadius = 8
        layer.borderColor = UIColor.secondaryLabel.cgColor
        layer.borderWidth = 1
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

class CustomButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemPink
        layer.cornerRadius = 8
        layer.masksToBounds = true
        setTitle("Button", for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

class CustomLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        text = "title"
        font = UIFont.boldSystemFont(ofSize: 20)
        textColor = .black
        textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
