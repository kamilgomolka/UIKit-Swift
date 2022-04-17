//
//  MainMenuViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/03/2022.
//

import UIKit

class MainMenuViewController: MenuViewController {
	
	// MARK: - Init
	
	init() {
		super.init(items: MainMenuItems.all)
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		title = "UIKit-Swift"
	}
}
