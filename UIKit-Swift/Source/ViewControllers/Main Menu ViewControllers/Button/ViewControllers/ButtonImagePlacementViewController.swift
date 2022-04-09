//
//  ButtonImagePlacementViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class ButtonImagePlacementViewController: StackViewController {
	
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
			newButton(title: "Leading",     imagePlacement: .leading),
			newButton(title: "Trailing",    imagePlacement: .trailing),
			newButton(title: "Top",         imagePlacement: .top),
			newButton(title: "Bottom",      imagePlacement: .bottom)
		]
		
		clicksCounter.setup(buttons: buttons)
		
		for button in buttons {
			stackView.addArrangedSubview(button)
		}
	}
	
	func newButton(title: String, imagePlacement: NSDirectionalRectEdge) -> UIButton {
		var config = UIButton.Configuration.filled()
		config.title = title
		config.image = UIImage(systemName: "star.fill")
		config.imagePlacement = imagePlacement
		
		return UIButton(configuration: config)
	}
}
