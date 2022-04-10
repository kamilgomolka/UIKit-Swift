//
//  TextFieldClearButtonViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextFieldClearButtonViewController: StackViewController {
	
	override func addSubviews() {
		super.addSubviews()
		
		let textFields = [
			textField(text: "Never", clearButtonMode: .never),
			textField(text: "WhileEditing", clearButtonMode: .whileEditing),
			textField(text: "UnlessEditing", clearButtonMode: .unlessEditing),
			textField(text: "Always", clearButtonMode: .always),
			textField(text: "ClearsOnBeginEditing = true", clearButtonMode: .never, clearsOnBeginEditing: true),
		]
		
		for textField in textFields {
			textField.delegate = self
			stackView.addArrangedSubview(textField)
		}
	}
	
	private func textField(text: String, clearButtonMode: UITextField.ViewMode, clearsOnBeginEditing: Bool = false) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.clearButtonMode = clearButtonMode
		textField.clearsOnBeginEditing = clearsOnBeginEditing
		textField.borderStyle = .roundedRect
		return textField
	}
}

extension TextFieldClearButtonViewController: UITextFieldDelegate {
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return false
	}
}
