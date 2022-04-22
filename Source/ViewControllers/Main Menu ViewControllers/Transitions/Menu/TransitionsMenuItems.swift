//
//  TransitionsMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct TransitionsMenuItems {
	
	static var all: [MenuItem] {
		return  [
			inNavigation,
			modalDefault,
			fullScreenCoverVertical,
			fullScreenFlipHorizontal,
			fullScreenCrossDisolve,
			fullScreenPartialCurl,
			pageSheetCoverVertical,
			pageSheetFlipHorizontal,
			pageSheetCrossDisolve,
			pageSheetWithDelegate,
			sheetMedium,
			sheetMediumAndLarge
		]
	}
	
	static var inNavigation: MenuItem {
		return MenuItem(
			name: "Push to NavigationController",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Push to NavigationController",
					withCloseButton: false
				)
				parentViewController.navigationController?.pushViewController(viewController, animated: true)
			}
		)
	}
	
	static var modalDefault: MenuItem {
		return MenuItem(
			name: "Modal, Default properties",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Modal, Default properties",
					withCloseButton: false
				)
				parentViewController.present(viewController, animated: true)
			}
		)
	}
	
	static var fullScreenCoverVertical: MenuItem {
		return MenuItem(
			name: "Modal, Full screen, Cover vertical",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Modal, Full screen, Cover vertical",
					withCloseButton: true
				)
				let navigationController = UINavigationController(rootViewController: viewController)
				navigationController.modalPresentationStyle = .fullScreen
				navigationController.modalTransitionStyle = .coverVertical
				parentViewController.present(navigationController, animated: true)
			}
		)
	}
	
	static var fullScreenFlipHorizontal: MenuItem {
		return MenuItem(
			name: "Modal, Full screen, Flip horizontal",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Modal, Full screen, Flip horizontal",
					withCloseButton: true
				)
				let navigationController = UINavigationController(rootViewController: viewController)
				navigationController.modalPresentationStyle = .fullScreen
				navigationController.modalTransitionStyle = .flipHorizontal
				parentViewController.present(navigationController, animated: true)
			}
		)
	}
	
	static var fullScreenCrossDisolve: MenuItem {
		return MenuItem(
			name: "Modal, Full screen, Cross disolve",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Modal, Full screen, Cross disolve",
					withCloseButton: true
				)
				let navigationController = UINavigationController(rootViewController: viewController)
				navigationController.modalPresentationStyle = .fullScreen
				navigationController.modalTransitionStyle = .crossDissolve
				parentViewController.present(navigationController, animated: true)
			}
		)
	}
	
	static var fullScreenPartialCurl: MenuItem {
		return MenuItem(
			name: "Modal, Full screen, Partial curl",
			clickHandler: { parentViewController in
				let viewController = FullScreenPartialCurlTransitionViewController()
				let navigationController = UINavigationController(rootViewController: viewController)
				navigationController.modalPresentationStyle = .fullScreen
				navigationController.modalTransitionStyle = .partialCurl
				parentViewController.present(navigationController, animated: true)
			}
		)
	}
	
	static var pageSheetCoverVertical: MenuItem {
		return MenuItem(
			name: "Page sheet, Cover vertical",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Page sheet, Cover vertical",
					withCloseButton: true
				)
				viewController.modalPresentationStyle = .pageSheet
				viewController.modalTransitionStyle = .coverVertical
				parentViewController.present(viewController, animated: true)
			}
		)
	}
	
	static var pageSheetFlipHorizontal: MenuItem {
		return MenuItem(
			name: "Page sheet, Flip horizontal",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Page sheet, Flip horizontal",
					withCloseButton: true
				)
				viewController.modalPresentationStyle = .pageSheet
				viewController.modalTransitionStyle = .flipHorizontal
				parentViewController.present(viewController, animated: true)
			}
		)
	}
	
	static var pageSheetCrossDisolve: MenuItem {
		return MenuItem(
			name: "Page sheet, Cross disolve",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Page sheet, Cross disolve",
					withCloseButton: true
				)
				viewController.modalPresentationStyle = .pageSheet
				viewController.modalTransitionStyle = .crossDissolve
				parentViewController.present(viewController, animated: true)
			}
		)
	}
	
	static var pageSheetWithDelegate: MenuItem {
		return MenuItem(
			name: "Page sheet + Detect closing",
			clickHandler: { parentViewController in
				let viewController = PageSheetWithDelegateTransitionViewController()
				let navigationController = UINavigationController(rootViewController: viewController)
				navigationController.modalPresentationStyle = .pageSheet
				parentViewController.present(navigationController, animated: true)
			}
		)
	}
	
	static var sheetMedium: MenuItem {
		return MenuItem(
			name: "Sheet, medium",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Sheet, medium",
					withCloseButton: false
				)
				if let sheet = viewController.sheetPresentationController {
					sheet.detents = [.medium()]
				}
				parentViewController.present(viewController, animated: true)
			}
		)
	}
	
	static var sheetMediumAndLarge: MenuItem {
		return MenuItem(
			name: "Sheet, resizable (medium -> large)",
			clickHandler: { parentViewController in
				let viewController = SingleLabelViewController(
					labelText: "Sheet, resizable\n(medium -> large)",
					withCloseButton: false
				)
				if let sheet = viewController.sheetPresentationController {
					sheet.detents = [.medium(), .large()]
					sheet.prefersGrabberVisible = true
				}
				parentViewController.present(viewController, animated: true)
			}
		)
	}
}
