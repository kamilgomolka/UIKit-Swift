//
//  OtherButtonsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/03/2022.
//

import UIKit

class OtherButtonsViewController: StackViewController {
	
	// MARK: - Properties
	
	var buttonDetailDisclosure: UIButton = {
		let button = UIButton(type: .detailDisclosure)
		button.configuration = UIButton.Configuration.gray()
		button.configuration?.title = "type = .detailDisclosure"
		return button
	}()
	
	var buttonContactAdd: UIButton = {
		let button = UIButton(type: .contactAdd)
		button.configuration = UIButton.Configuration.gray()
		button.configuration?.title = "type = .contactAdd"
		return button
	}()
	
	var buttonClose: UIButton = {
		let button = UIButton(type: .close)
		button.configuration = UIButton.Configuration.gray()
		button.configuration?.title = "type = .close"
		return button
	}()
	
	var buttonPrimary: UIButton = {
		var config = UIButton.Configuration.gray()
		config.title = "role = .primary"
		
		let button = UIButton(configuration: config)
		button.role = .primary
		return button
	}()
	
	var buttonActivityIndicator: UIButton = {
		var config = UIButton.Configuration.gray()
		config.title = "showsActivityIndicator = true"
		config.showsActivityIndicator = true
		return UIButton(configuration: config)
	}()
	
	var buttonSubtitle: UIButton = {
		var config = UIButton.Configuration.filled()
		config.subtitle = "Just subtitle"
		return UIButton(configuration: config)
	}()
	
	var buttonTitleAndSubtitle: UIButton = {
		var config = UIButton.Configuration.filled()
		config.title = "Title"
		config.subtitle = "Subtitle"
		return UIButton(configuration: config)
	}()
	
	var buttonImage: UIButton = {
		var config = UIButton.Configuration.filled()
		config.image = UIImage(systemName: "square.and.arrow.up")
		return UIButton(configuration: config)
	}()
	
	var buttonImageAndText: UIButton = {
		var config = UIButton.Configuration.filled()
		config.image = UIImage(systemName: "square.and.arrow.up")
		config.title = "Image and text"
		return UIButton(configuration: config)
	}()
	
	var buttonImageAndTextAndSubtitle: UIButton = {
		var config = UIButton.Configuration.filled()
		config.image = UIImage(systemName: "square.and.arrow.up")
		config.title = "Title"
		config.subtitle = "Subtitle"
		return UIButton(configuration: config)
	}()
	
	var buttonDisabled: UIButton = {
		var config = UIButton.Configuration.filled()
		config.title = "Disabled"
		let button = UIButton(configuration: config)
		button.isEnabled = false
		return button
	}()
	
	var allButtons: [UIButton] {
		return [
			buttonDetailDisclosure,
			buttonContactAdd,
			buttonClose,
			buttonPrimary,
			buttonActivityIndicator,
			buttonSubtitle,
			buttonTitleAndSubtitle,
			buttonImage,
			buttonImageAndText,
			buttonImageAndTextAndSubtitle,
			buttonDisabled
		]
	}
	
	let clicksCounter = ButtonClicksCounter()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		stackView.alignment = .leading
	}
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		clicksCounter.setup(buttons: allButtons)
		
		for button in allButtons {
			stackView.addArrangedSubview(button)
		}
	}
}
