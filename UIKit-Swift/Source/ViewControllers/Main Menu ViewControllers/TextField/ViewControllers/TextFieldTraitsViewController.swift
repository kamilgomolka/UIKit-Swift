//
//  TextFieldTraitsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextFieldTraitsViewController: BaseTextFieldViewController {
    
	override func addSubviews() {
		super.addSubviews()
		
		let subviews: [UIView] = [
			
			label(text: "autocapitalizationType"),
			textField(text: "none", autocapitalizationType: .none),
			textField(text: "words", autocapitalizationType: .words),
			textField(text: "sentences", autocapitalizationType: .sentences),
			textField(text: "allCharacters", autocapitalizationType: .allCharacters),
			
			label(text: "autocorrectionType"),
			textField(text: "yes", autocorrectionType: .yes),
			textField(text: "no", autocorrectionType: .no),

			label(text: "smartDashesType"),
			textField(text: "yes", smartDashesType: .yes),
			textField(text: "no", smartDashesType: .no),

			label(text: "smartInsertDeleteType"),
			textField(text: "yes", smartInsertDeleteType: .yes),
			textField(text: "no", smartInsertDeleteType: .no),

			label(text: "smartQuotesType"),
			textField(text: "yes", smartQuotesType: .yes),
			textField(text: "no", smartQuotesType: .no),

			label(text: "spellCheckingType"),
			textField(text: "yes", spellCheckingType: .yes),
			textField(text: "no", spellCheckingType: .no)
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
	
	private func textField(text: String, autocapitalizationType: UITextAutocapitalizationType) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.autocapitalizationType = autocapitalizationType
		textField.borderStyle = .roundedRect
		return textField
	}
	
	private func textField(text: String, autocorrectionType: UITextAutocorrectionType) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.autocorrectionType = autocorrectionType
		textField.borderStyle = .roundedRect
		return textField
	}
	
	private func textField(text: String, smartDashesType: UITextSmartDashesType) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.smartDashesType = smartDashesType
		textField.borderStyle = .roundedRect
		return textField
	}
	
	private func textField(text: String, smartInsertDeleteType: UITextSmartInsertDeleteType) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.smartInsertDeleteType = smartInsertDeleteType
		textField.borderStyle = .roundedRect
		return textField
	}
	
	private func textField(text: String, smartQuotesType: UITextSmartQuotesType) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.smartQuotesType = smartQuotesType
		textField.borderStyle = .roundedRect
		return textField
	}
	
	private func textField(text: String, spellCheckingType: UITextSpellCheckingType) -> UITextField {
		let textField = UITextField()
		textField.text = text
		textField.spellCheckingType = spellCheckingType
		textField.borderStyle = .roundedRect
		return textField
	}
}
