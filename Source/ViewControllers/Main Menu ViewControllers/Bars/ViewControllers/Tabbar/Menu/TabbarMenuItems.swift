//
//  TabbarMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/04/2022.
//

import Foundation

struct TabbarMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Simple Tabbar",
				viewControllerProvider: { SimpleTabbarViewController() }
			),
			MenuItem(
				name: "Many Items",
				viewControllerProvider: { ManyItemsTabbarViewController() }
			),
			MenuItem(
				name: "Badge",
				viewControllerProvider: { BadgeTabbarViewController() }
			)
		]
	}
}
