//
//  ToolbarMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

struct ToolbarMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Simple toolbar",
				viewControllerProvider: { SimpleToolbarViewController() }
			),
			MenuItem(
				name: "Toolbar and TableView",
				viewControllerProvider: { ToolbarAndTableViewController() }
			),
			MenuItem(
				name: "BarButtonItem - Style",
				viewControllerProvider: { ToolbarItemStyleViewController() }
			),
			MenuItem(
				name: "BarButtonItem - System items",
				viewControllerProvider: { ToolbarSystemItemsViewController() }
			)
		]
	}
}
