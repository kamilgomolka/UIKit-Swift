//
//  ButtonImagePlacementViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/03/2022.
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
			button(title: "Leading",     imagePlacement: .leading),
			button(title: "Trailing",    imagePlacement: .trailing),
			button(title: "Top",         imagePlacement: .top),
			button(title: "Bottom",      imagePlacement: .bottom)
		]
		
		clicksCounter.setup(buttons: buttons)
		
		for button in buttons {
			stackView.addArrangedSubview(button)
		}
	}
	
	private func button(title: String, imagePlacement: NSDirectionalRectEdge) -> UIButton {
		var config = UIButton.Configuration.filled()
		config.title = title
		config.image = UIImage(systemName: "star.fill")
		config.imagePlacement = imagePlacement
		
		return UIButton(configuration: config)
	}
}
