//
//  ScrollViewMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import Foundation

struct ScrollViewMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Vertical",
				viewControllerProvider: { ScrollViewVerticalViewController() }
			),
			MenuItem(
				name: "Horizontal",
				viewControllerProvider: { ScrollViewHorizontalViewController() }
			),
			MenuItem(
				name: "Two directions",
				viewControllerProvider: { ScrollViewTwoDirectionsViewController() }
			),
            MenuItem(
                name: "Paging enabled",
                viewControllerProvider: { ScrollViewWithPagingViewController() }
            )
		]
	}
}
