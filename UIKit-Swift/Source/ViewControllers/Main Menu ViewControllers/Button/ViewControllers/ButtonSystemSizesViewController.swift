//
//  ButtonSystemSizesViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class ButtonSystemSizesViewController: StackViewController {
	
	// MARK: - Properties
	
	let clicksCounter = ButtonClicksCounter()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		stackView.alignment = .leading
	}
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		let buttons = [
			newButton(title: "Size = Mini",    size: .mini),
			newButton(title: "Size = Small",   size: .small),
			newButton(title: "Size = Medium",  size: .medium),
			newButton(title: "Size = Large",   size: .large)
		]
		
		clicksCounter.setup(buttons: buttons)
		
		for button in buttons {
			stackView.addArrangedSubview(button)
		}
	}
	
	func newButton(title: String, size: UIButton.Configuration.Size) -> UIButton {
		var config = UIButton.Configuration.gray()
		config.title = title
		config.buttonSize = size
		
		return UIButton(configuration: config)
	}
}
