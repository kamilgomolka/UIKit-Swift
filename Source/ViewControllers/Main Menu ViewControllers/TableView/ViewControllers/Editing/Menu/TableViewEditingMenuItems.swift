//
//  TableViewEditingMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import Foundation

struct TableViewEditingMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Add and delete",
				viewControllerProvider: { TableViewAddAndDeleteViewController() }
			),
			MenuItem(
				name: "Reorder",
				viewControllerProvider: { TableViewReorderViewController() }
			),
			MenuItem(
				name: "Swipe actions",
				viewControllerProvider: { TableViewSwipeActionsViewController() }
			)
		]
	}
}
