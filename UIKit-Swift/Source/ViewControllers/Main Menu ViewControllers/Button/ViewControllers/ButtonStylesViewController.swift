//
//  ButtonStylesViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/03/2022.
//

import UIKit

class ButtonStylesViewController: StackViewController {
	
	// MARK: - Properties
	
	let clicksCounter = ButtonClicksCounter()
	
	var plainButton: UIButton = {
		let config = UIButton.Configuration.plain()
		let button = UIButton(configuration: config, primaryAction: nil)
		button.setTitle("Style = Plain", for: .normal)
		return button
	}()
	
	var grayButton: UIButton = {
		let config = UIButton.Configuration.gray()
		let button = UIButton(configuration: config, primaryAction: nil)
		button.setTitle("Style = Gray", for: .normal)
		return button
	}()
	
	var tintedButton: UIButton = {
		let config = UIButton.Configuration.tinted()
		let button = UIButton(configuration: config, primaryAction: nil)
		button.setTitle("Style = Tinted", for: .normal)
		return button
	}()
	
	var filledButton: UIButton = {
		let config = UIButton.Configuration.filled()
		let button = UIButton(configuration: config, primaryAction: nil)
		button.setTitle("Style = Filled", for: .normal)
		return button
	}()
	
	var allButtons: [UIButton] {
		return [plainButton, grayButton, tintedButton, filledButton]
	}
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		stackView.alignment = .leading
	}
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		for button in allButtons {
			stackView.addArrangedSubview(button)
		}
		
		clicksCounter.setup(buttons: allButtons)
	}
}
