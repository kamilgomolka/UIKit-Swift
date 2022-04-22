//
//  TableViewStyleMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import Foundation

struct TableViewStyleMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Plain",
				viewControllerProvider: { TableViewStylePlainViewController() }
			),
			MenuItem(
				name: "Grouped",
				viewControllerProvider: { TableViewStyleGroupedViewController() }
			),
			MenuItem(
				name: "InsetGrouped",
				viewControllerProvider: { TableViewStyleInsetGroupedViewController() }
			)
		]
	}
}
