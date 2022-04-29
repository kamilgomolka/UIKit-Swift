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
				name: "CollectionView",
				nestedItems: CollectionViewMenuItems.all
			),
			MenuItem(
				name: "Controls",
				nestedItems: ControlsMenuItems.all
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
				name: "ViewController transitions",
				nestedItems: TransitionsMenuItems.all
			),
		]
	}
}
