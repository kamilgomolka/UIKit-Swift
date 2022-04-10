//
//  BaseTextFieldViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class BaseTextFieldViewController: StackViewController {
	
	override func loadView() {
		super.loadView()
		
		attachTextFieldDelegate()
	}
	
	func attachTextFieldDelegate() {
        stackView.arrangedSubviews.forEach { view in
            if let textField = view as? UITextField {
                textField.delegate = self
            }
        }
    }
}

extension BaseTextFieldViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let index = stackView.arrangedSubviews.firstIndex(of: textField),
              stackView.arrangedSubviews.count > index + 1 else {
            textField.resignFirstResponder()
            return false
        }
        
        if let nextTextField = stackView.arrangedSubviews[index + 1] as? UITextField {
            nextTextField.becomeFirstResponder()
        }
        
        return false
    }
}
