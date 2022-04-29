//
//  TextViewNonEditableNonSelectableViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextViewNonEditableNonSelectableViewController: BaseViewController {
	
	// MARK: - Properties
	
	var textView: UITextView = {
		let textView = UITextView()
		textView.keyboardDismissMode = .interactive
		textView.isEditable = false
		textView.isSelectable = false
		textView.font = UIFont.preferredFont(forTextStyle: .body)
		textView.text = MockDataLoader.shared.longText()
		textView.translatesAutoresizingMaskIntoConstraints = false
		return textView
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = .systemBackground
		
		addSubviews()
		createConstraints()
	}
	
	// MARK: - Initialization
	
	func addSubviews() {
		view.addSubview(textView)
	}
	
	func createConstraints() {
		textView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		textView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		textView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		textView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
	}
}
