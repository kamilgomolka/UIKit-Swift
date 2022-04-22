//
//  TextFieldDisabledViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextFieldDisabledViewController: StackViewController {
    
	override func addSubviews() {
		super.addSubviews()
		
		let subviews: [UIView] = [
			
			label(text: "Disabled - placeholder"),
			textField(placeholder: "None", borderStyle: .none),
			textField(placeholder: "Line", borderStyle: .line),
			textField(placeholder: "Bezel", borderStyle: .bezel),
			textField(placeholder: "RoundedRect", borderStyle: .roundedRect),
			
			label(text: "Disabled - text"),
			textField(text: "None", borderStyle: .none),
			textField(text: "Line", borderStyle: .line),
			textField(text: "Bezel", borderStyle: .bezel),
			textField(text: "RoundedRect", borderStyle: .roundedRect)
		]
		
		for subview in subviews {
			stackView.addArrangedSubview(subview)
		}
	}
	
	private func label(text: String) -> UILabel {
		let label = UILabel()
		label.text = text
		label.font = UIFont.preferredFont(forTextStyle: .title2)
		return label
	}
	
	private func textField(text: String? = nil, placeholder: String? = nil, borderStyle: UITextField.BorderStyle) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.placeholder = placeholder
		textField.borderStyle = borderStyle
		textField.isEnabled = false
		return textField
	}
}
