//
//  ButtonToggleViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class ButtonToggleViewController: StackViewController {
	
	// MARK: - Properties
	
	var plainButton: UIButton = {
		let config = UIButton.Configuration.plain()
		let button = UIButton(configuration: config, primaryAction: nil)
		button.setTitle("Toggle button, Plain", for: .normal)
		button.changesSelectionAsPrimaryAction = true
		return button
	}()
	
	var grayButton: UIButton = {
		let config = UIButton.Configuration.gray()
		let button = UIButton(configuration: config, primaryAction: nil)
		button.setTitle("Toggle button, Gray", for: .normal)
		button.changesSelectionAsPrimaryAction = true
		return button
	}()
	
	var tintedButton: UIButton = {
		let config = UIButton.Configuration.tinted()
		let button = UIButton(configuration: config, primaryAction: nil)
		button.setTitle("Toggle button, Tinted", for: .normal)
		button.changesSelectionAsPrimaryAction = true
		return button
	}()
	
	var filledButton: UIButton = {
		let config = UIButton.Configuration.filled()
		let button = UIButton(configuration: config, primaryAction: nil)
		button.setTitle("Toggle button, Filled", for: .normal)
		button.changesSelectionAsPrimaryAction = true
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
	}
}
