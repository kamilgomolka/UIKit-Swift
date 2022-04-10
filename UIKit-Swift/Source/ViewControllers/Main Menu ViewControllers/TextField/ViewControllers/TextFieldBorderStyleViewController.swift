//
//  TextFieldBorderStyleViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextFieldBorderStyleViewController: BaseTextFieldViewController {
    
	override func addSubviews() {
		super.addSubviews()
		
		let textFields = [
			textField(placeholder: "None", borderStyle: .none),
			textField(placeholder: "Line", borderStyle: .line),
			textField(placeholder: "Bezel", borderStyle: .bezel),
			textField(placeholder: "RoundedRect", borderStyle: .roundedRect)
		]
		
		for textField in textFields {
			stackView.addArrangedSubview(textField)
		}
	}
	
	private func textField(placeholder: String, borderStyle: UITextField.BorderStyle) -> UITextField {
		let textField = UITextField()
		textField.placeholder = placeholder
		textField.borderStyle = borderStyle
		return textField
	}
}
