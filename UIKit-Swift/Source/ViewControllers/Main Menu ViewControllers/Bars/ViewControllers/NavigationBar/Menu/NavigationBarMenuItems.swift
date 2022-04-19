//
//  NavigationBarMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 18/04/2022.
//

import Foundation

struct NavigationBarMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Small title",
				viewControllerProvider: { NavigationBarSmallTiltleViewController() }
			),
			MenuItem(
				name: "Large title",
				viewControllerProvider: { NavigationBarLargeTitleViewController() }
			),
			MenuItem(
				name: "Grouped, Small title",
				viewControllerProvider: { NavigationBarGroupedSmallTiltleViewController() }
			),
			MenuItem(
				name: "Grouped, Large title",
				viewControllerProvider: { NavigationBarGroupedLargeTitleViewController() }
			),
			MenuItem(
				name: "Custom titleView",
				viewControllerProvider: { NavigationBarCustomTitleViewController() }
			),
			MenuItem(
				name: "Buttons",
				viewControllerProvider: { NavigationBarButtonsViewController() }
			),
			MenuItem(
				name: "Multiple buttons",
				viewControllerProvider: { NavigationBarMultipleButtonsViewController() }
			),
		]
	}
}
