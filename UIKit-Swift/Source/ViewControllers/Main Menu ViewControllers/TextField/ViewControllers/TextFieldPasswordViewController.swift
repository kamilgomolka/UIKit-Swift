//
//  TextFieldPasswordViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextFieldPasswordViewController: BaseTextFieldViewController {
	
	override func addSubviews() {
		super.addSubviews()
		
		let textField = passwordTextField(text: "Password")
		stackView.addArrangedSubview(textField)
	}
	
	private func passwordTextField(text: String) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.isSecureTextEntry = true
		textField.borderStyle = .roundedRect
		return textField
	}
}

