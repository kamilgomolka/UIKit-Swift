//
//  TableViewSeparatorStyleMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import Foundation

struct TableViewSeparatorStyleMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "None",
				viewControllerProvider: { TableViewSeparatorStyleNoneViewController() }
			),
			MenuItem(
				name: "Single line",
				viewControllerProvider: { TableViewSeparatorStyleLineViewController() }
			)
		]
	}
}
