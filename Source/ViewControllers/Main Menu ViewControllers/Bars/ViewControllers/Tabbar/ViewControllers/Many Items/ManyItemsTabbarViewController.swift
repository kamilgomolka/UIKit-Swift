//
//  ManyItemsTabbarViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/04/2022.
//

import UIKit

class ManyItemsTabbarViewController: UITabBarController {
	
	override func loadView() {
		super.loadView()
		
		createViewControllers()
		
		///
		/// To hide `Edit` button in the More Menu,
		/// set this property to nil:
		///
//		customizableViewControllers = nil
	}
	
	func createViewControllers() {
		viewControllers = (0...10).map {
			createViewController(index: $0)
		}
	}
	
	func createViewController(index: Int) -> UIViewController {
		let viewController = SingleLabelViewController(labelText: "Item \(index)", withCloseButton: false)
		
		viewController.tabBarItem = UITabBarItem(
			title: "Item \(index)",
			image: UIImage(systemName: "star.fill"),
			tag: index
		)
		
		return viewController
	}
}
