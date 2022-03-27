//
//  AllControlsTextFieldView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsTextFieldView: AllControlsBaseView {
    
    // MARK: - Properties
    
    var textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Placeholder text"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    // MARK: - Initialization
    
    override func initialize() {
        super.initialize()
        
        titleLabel.text = "Text field"
        
        textField.delegate = self
    }
    
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(textField)
    }
    
    override func createConstraints() {
        super.createConstraints()
        
        textField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0).isActive = true
        textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0).isActive = true
        textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0).isActive = true
        textField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8.0).isActive = true
    }
}

extension AllControlsTextFieldView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
