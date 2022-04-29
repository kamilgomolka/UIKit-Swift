//
//  ButtonSystemSizesViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/03/2022.
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
			button(title: "Size = Mini",    size: .mini),
			button(title: "Size = Small",   size: .small),
			button(title: "Size = Medium",  size: .medium),
			button(title: "Size = Large",   size: .large)
		]
		
		clicksCounter.setup(buttons: buttons)
		
		for button in buttons {
			stackView.addArrangedSubview(button)
		}
	}
	
	private func button(title: String, size: UIButton.Configuration.Size) -> UIButton {
		var config = UIButton.Configuration.gray()
		config.title = title
		config.buttonSize = size
		
		return UIButton(configuration: config)
	}
}
