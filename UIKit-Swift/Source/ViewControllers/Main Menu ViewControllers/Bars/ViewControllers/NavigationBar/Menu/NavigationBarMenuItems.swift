//
//  NavigationBarMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 18/04/2022.
//

import UIKit

struct NavigationBarMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Small title",
				viewControllerProvider: { NavigationBarSmallTiltleViewController() }
			),
			MenuItem(
				name: "Large title",
				viewControllerProvider: { NavigationBarLargeTitleViewController() }
			),
			MenuItem(
				name: "Grouped, Small title",
				viewControllerProvider: { NavigationBarGroupedSmallTiltleViewController() }
			),
			MenuItem(
				name: "Grouped, Large title",
				viewControllerProvider: { NavigationBarGroupedLargeTitleViewController() }
			),
			MenuItem(
				name: "Custom titleView",
				viewControllerProvider: { NavigationBarCustomTitleViewController() }
			),
			MenuItem(
				name: "Buttons",
				viewControllerProvider: { NavigationBarButtonsViewController() }
			),
			MenuItem(
				name: "Multiple buttons",
				viewControllerProvider: { NavigationBarMultipleButtonsViewController() }
			),
			MenuItem(
				name: "Prompt",
				viewControllerProvider: { NavigationBarPromptViewController() }
			),
			MenuItem(
				name: "Custom Back button [#1]",
				clickHandler: { parentViewController in
					let viewController = NavigationBarCustomBackButtonViewController()
					viewController.title = "Custom Back button [#1]"
					
					///
					/// For some reason, `navigationItem.backBarButtonItem` works only
					/// when it's set in the parent ViewController.
					///
					/// The reason for this may be the back button's title, which usually describes previous ViewController.
					///
					let backButton = UIBarButtonItem(
						title: "[BACK]",
						style: .plain,
						target: nil,
						action: nil
					)
					parentViewController.navigationItem.backBarButtonItem = backButton

					///
					/// You can also set style to minimal, to show only arrow (no text):
					///
					//parentViewController.navigationItem.backButtonDisplayMode = .minimal
					
					parentViewController.navigationController?.pushViewController(viewController, animated: true)
				}
			),
			MenuItem(
				name: "Custom Back button [#2]",
				viewControllerProvider: { NavigationBarCustomBackButtonViewController2() }
			),
		]
	}
}
