//
//  TableViewMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import Foundation

struct TableViewMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "TableView.Style",
				nestedItems: TableViewStyleMenuItems.all
			),
			MenuItem(
				name: "TableView.SeparatorStyle",
				nestedItems: TableViewSeparatorStyleMenuItems.all
			),
			MenuItem(
				name: "TableView.Selection",
				nestedItems: TableViewSelectionMenuItems.all
			),
			MenuItem(
				name: "Cell.Style",
				nestedItems: CellStyleMenuItems.all
			),
			MenuItem(
				name: "Cell.SelectionStyle",
				viewControllerProvider: { CellSelectionStyleViewController() }
			),
			MenuItem(
				name: "Cell.AccessoryType",
				viewControllerProvider: { CellAccessoryTypeViewController() }
			),
			MenuItem(
				name: "Cell.SeparatorInsets",
				viewControllerProvider: { CellSeparatorInsetsViewController() }
			),
			MenuItem(
				name: "Headers and Footters",
				viewControllerProvider: { TableViewHeadersAndFoottersViewController() }
			),
			MenuItem(
				name: "SectionIndex",
				viewControllerProvider: { TableViewSectionIndexViewController() }
			),
			MenuItem(
				name: "Editing modes",
				nestedItems: TableViewEditingMenuItems.all
			)
		]
	}
}
