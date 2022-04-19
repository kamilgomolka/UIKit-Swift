//
//  MainMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import Foundation

struct MainMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Bars",
				nestedItems: BarsMenuItems.all
			),
			MenuItem(
				name: "All controls",
				viewControllerProvider: { AllControlsViewController() }
			),
			MenuItem(
				name: "Label",
				nestedItems: LabelMenuItems.all
			),
			MenuItem(
				name: "Button",
				nestedItems: ButtonMenuItems.all
			),
			MenuItem(
				name: "TextField",
				nestedItems: TextFieldMenuItems.all
			),
			MenuItem(
				name: "TextView",
				nestedItems: TextViewMenuItems.all
			),
			MenuItem(
				name: "ScrollView",
				nestedItems: ScrollViewMenuItems.all
			),
			MenuItem(
				name: "TableView",
				nestedItems: TableViewMenuItems.all
			),
			MenuItem(
				name: "CollectionView",
				nestedItems: CollectionViewMenuItems.all
			),
			MenuItem(
				name: "ViewController transitions",
				nestedItems: TransitionsMenuItems.all
			)
		]
	}
}
