//
//  TextFieldAlignmentViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextFieldAlignmentViewController: BaseTextFieldViewController {
	
	override func addSubviews() {
		super.addSubviews()
		
		let textFields = [
			textField(text: "left", 		textAlignment: .left),
			textField(text: "center", 		textAlignment: .center),
			textField(text: "right", 		textAlignment: .right),
			textField(text: "justified",	textAlignment: .justified),
			textField(text: "natural", 		textAlignment: .natural),
		]
		
		for textField in textFields {
			stackView.addArrangedSubview(textField)
		}
	}
	
	private func textField(text: String, textAlignment: NSTextAlignment) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.textAlignment = textAlignment
		textField.borderStyle = .roundedRect
		return textField
	}
}

