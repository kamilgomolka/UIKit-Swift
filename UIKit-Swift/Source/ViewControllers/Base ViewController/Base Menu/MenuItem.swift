//
//  MenuItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

typealias MenuItemClickHandler = (UIViewController) -> Void
typealias ViewControllerProviderClosure = () -> UIViewController

struct MenuItem {
	
	// MARK: - Properties
	
	let name: String
	let clickHandler: MenuItemClickHandler
	
	// MARK: - Init
	
	init(name: String, clickHandler: @escaping MenuItemClickHandler) {
		self.name = name
		self.clickHandler = clickHandler
	}
	
	init(name: String, viewControllerProvider: @escaping ViewControllerProviderClosure) {
		self.name = name
		
		clickHandler = { parentViewController in
			let viewController = viewControllerProvider()
			viewController.title = name
			parentViewController.navigationController?.pushViewController(viewController, animated: true)
		}
	}
	
	init(name: String, nestedItems: [MenuItem]) {
		self.name = name
		
		clickHandler = { parentViewController in
			let viewController = MenuViewController(items: nestedItems)
			viewController.title = name
			parentViewController.navigationController?.pushViewController(viewController, animated: true)
		}
	}
}
