//
//  ButtonCornerStyleViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class ButtonCornerStyleViewController: StackViewController {
	
	// MARK: - Properties
	
	let clicksCounter = ButtonClicksCounter()
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		let buttons = [
			newButton(title: "Fixed",
					  subtitle: "uses cornerRadius without modification",
					  cornerStyle: .fixed),
			
			newButton(title: "Dynamic",
					  subtitle: "adjust cornerRadius depending on size",
					  cornerStyle: .dynamic),
			
			newButton(title: "Small", cornerStyle: .small),
			newButton(title: "Medium", cornerStyle: .medium),
			newButton(title: "Large", cornerStyle: .large),
			newButton(title: "Capsule", cornerStyle: .capsule)
		]
		
		clicksCounter.setup(buttons: buttons)
		
		for button in buttons {
			stackView.addArrangedSubview(button)
		}
	}
	
	func newButton(title: String, subtitle: String? = nil, cornerStyle: UIButton.Configuration.CornerStyle) -> UIButton {
		var config = UIButton.Configuration.filled()
		config.title = title
		config.subtitle = subtitle
		config.titleAlignment = .center
		config.cornerStyle = cornerStyle
		
		return UIButton(configuration: config)
	}
}
