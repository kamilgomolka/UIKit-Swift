//
//  SimpleTabbarViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/04/2022.
//

import UIKit

class SimpleTabbarViewController: UITabBarController {
	
	override func loadView() {
		super.loadView()
		
		createViewControllers()
	}
	
	func createViewControllers() {
		viewControllers = [
			SimpleTabbarChild1(),
			SimpleTabbarChild2(),
			SimpleTabbarChild3(),
			SimpleTabbarChild4()
		]
	}
}
