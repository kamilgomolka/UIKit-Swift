//
//  BadgeTabbarViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/04/2022.
//

import UIKit

class BadgeTabbarViewController: UITabBarController {
	
	override func loadView() {
		super.loadView()
		
		createViewControllers()
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
		
		switch index % 3 {
		case 0:
			viewController.tabBarItem.badgeValue = "1"
		case 1:
			viewController.tabBarItem.badgeValue = "3"
		default:
			viewController.tabBarItem.badgeValue = "1257"
		}
		
		return viewController
	}
}

