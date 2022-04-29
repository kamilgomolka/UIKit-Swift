//
//  BarsMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 18/04/2022.
//

import Foundation

struct BarsMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Navigation bar",
				nestedItems: NavigationBarMenuItems.all
			),
			MenuItem(
				name: "Tabbar",
				nestedItems: TabbarMenuItems.all
			),
			MenuItem(
				name: "Toolbar",
				nestedItems: ToolbarMenuItems.all
			),
		]
	}
}
