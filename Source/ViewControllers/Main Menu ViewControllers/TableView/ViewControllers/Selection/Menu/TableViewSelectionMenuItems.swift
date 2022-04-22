//
//  TableViewSelectionMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import Foundation

struct TableViewSelectionMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Single",
				viewControllerProvider: { TableViewSelectionSingleViewController() }
			),
			MenuItem(
				name: "Single with deselect",
				viewControllerProvider: { TableViewSelectionWithDeselectViewController() }
			),
			MenuItem(
				name: "Multiple",
				viewControllerProvider: { TableViewSelectionMultipleViewController() }
			)
		]
	}
}
