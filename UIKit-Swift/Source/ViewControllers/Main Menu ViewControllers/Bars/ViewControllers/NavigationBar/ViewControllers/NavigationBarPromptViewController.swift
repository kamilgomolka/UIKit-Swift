//
//  NavigationBarPromptViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 19/04/2022.
//

import UIKit

class NavigationBarPromptViewController: BaseNavigationBarViewController {
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		navigationItem.prompt = "Example prompt text"
	}
}
