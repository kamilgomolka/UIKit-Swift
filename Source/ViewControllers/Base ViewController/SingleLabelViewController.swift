//
//  SingleLabelViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/04/2022.
//

import UIKit

class SingleLabelViewController: UIViewController {
	
	// MARK: - Properties
	
	let withCloseButton: Bool
	
	var label: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .title1)
		label.textAlignment = .center
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	// MARK: - Init

	init(labelText: String, withCloseButton: Bool) {
		self.withCloseButton = withCloseButton
		
		super.init(nibName: nil, bundle: nil)
		
		label.text = labelText
	}
	
	required init?(coder: NSCoder) {
		withCloseButton = false
		
		super.init(coder: coder)
	}
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = UIColor.systemBackground
		setupLabel()
		setupCloseButton()
	}
	
	func setupLabel() {
		view.addSubview(label)
		label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
		label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
		label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
	}
	
	func setupCloseButton() {
		if withCloseButton {
			let closeButton = UIBarButtonItem(title: "Close",
											  style: .done,
											  target: self,
											  action: #selector(close))
			
			navigationItem.rightBarButtonItem = closeButton
		}
	}
	
	// MARK: - Actions
	
	@objc func close() {
		dismiss(animated: true, completion: nil)
	}
}
