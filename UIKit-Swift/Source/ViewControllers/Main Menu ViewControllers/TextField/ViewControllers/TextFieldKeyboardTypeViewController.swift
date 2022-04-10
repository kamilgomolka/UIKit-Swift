//
//  TextFieldKeyboardTypeViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextFieldKeyboardTypeViewController: BaseTextFieldViewController {
    
	override func addSubviews() {
		super.addSubviews()
		
		let textFields = [
			// Default type for the current input method.
			newTextField(placeholder: "Default", keyboardType: .default),
			
			// Displays a keyboard which can enter ASCII characters
			newTextField(placeholder: "AsciiCapable", keyboardType: .asciiCapable),
			
			// Numbers and assorted punctuation.
			newTextField(placeholder: "NumbersAndPunctuation", keyboardType: .numbersAndPunctuation),
			
			// A type optimized for URL entry (shows . / .com prominently).
			newTextField(placeholder: "URL", keyboardType: .URL),
			
			// A number pad with locale-appropriate digits (0-9, ۰-۹, ०-९, etc.). Suitable for PIN entry.
			newTextField(placeholder: "NumberPad", keyboardType: .numberPad),
			
			// A phone pad (1-9, *, 0, #, with letters under the numbers).
			newTextField(placeholder: "PhonePad", keyboardType: .phonePad),
			
			// A type optimized for entering a person's name or phone number.
			newTextField(placeholder: "NamePhonePad", keyboardType: .namePhonePad),
			
			// A type optimized for multiple email address entry (shows space @ . prominently).
			newTextField(placeholder: "EmailAddress", keyboardType: .emailAddress),
			
			// A number pad with a decimal point.
			newTextField(placeholder: "DecimalPad", keyboardType: .decimalPad),
			
			// A type optimized for twitter text entry (easy access to @ #)
			newTextField(placeholder: "Twitter", keyboardType: .twitter),
			
			// A default keyboard type with URL-oriented addition (shows space . prominently).
			newTextField(placeholder: "WebSearch", keyboardType: .webSearch),
			
			// A number pad (0-9) that will always be ASCII digits.
			newTextField(placeholder: "AsciiCapableNumberPad", keyboardType: .asciiCapableNumberPad),
		]
		
		for textField in textFields {
			stackView.addArrangedSubview(textField)
		}
	}
	
	private func newTextField(placeholder: String, keyboardType: UIKeyboardType) -> UITextField {
		let textField = UITextField()
		textField.placeholder = placeholder
		textField.keyboardType = keyboardType
		textField.borderStyle = .roundedRect
		return textField
	}
}
