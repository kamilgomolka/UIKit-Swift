//
//  TextFieldReturnKeyTypeViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextFieldReturnKeyTypeViewController: BaseTextFieldViewController {
    
	override func addSubviews() {
		super.addSubviews()
		
		let textFields = [
			textField(placeholder: "Default", returnKeyType: .default),
			textField(placeholder: "Go", returnKeyType: .go),
			textField(placeholder: "Google", returnKeyType: .google),
			textField(placeholder: "Join", returnKeyType: .join),
			textField(placeholder: "Next", returnKeyType: .next),
			textField(placeholder: "Route", returnKeyType: .route),
			textField(placeholder: "Search", returnKeyType: .search),
			textField(placeholder: "Send", returnKeyType: .send),
			textField(placeholder: "Yahoo", returnKeyType: .yahoo),
			textField(placeholder: "Done", returnKeyType: .done),
			textField(placeholder: "EmergencyCall", returnKeyType: .emergencyCall),
			textField(placeholder: "Continue", returnKeyType: .continue)
		]
		
		for textField in textFields {
			stackView.addArrangedSubview(textField)
		}
	}
	
	private func textField(placeholder: String, returnKeyType: UIReturnKeyType) -> UITextField {
		let textField = UITextField()
		textField.placeholder = placeholder
		textField.returnKeyType = returnKeyType
		textField.borderStyle = .roundedRect
		return textField
	}
}
