//
//  ButtonCornerStyleViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/03/2022.
//

import UIKit

class ButtonCornerStyleViewController: StackViewController {
	
	// MARK: - Properties
	
	let clicksCounter = ButtonClicksCounter()
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		let buttons = [
			button(title: "Fixed",
				   subtitle: "uses cornerRadius without modification",
				   cornerStyle: .fixed),
			
			button(title: "Dynamic",
				   subtitle: "adjust cornerRadius depending on size",
				   cornerStyle: .dynamic),
			
			button(title: "Small", cornerStyle: .small),
			button(title: "Medium", cornerStyle: .medium),
			button(title: "Large", cornerStyle: .large),
			button(title: "Capsule", cornerStyle: .capsule)
		]
		
		clicksCounter.setup(buttons: buttons)
		
		for button in buttons {
			stackView.addArrangedSubview(button)
		}
	}
	
	private func button(title: String, subtitle: String? = nil, cornerStyle: UIButton.Configuration.CornerStyle) -> UIButton {
		var config = UIButton.Configuration.filled()
		config.title = title
		config.subtitle = subtitle
		config.titleAlignment = .center
		config.cornerStyle = cornerStyle
		
		return UIButton(configuration: config)
	}
}
