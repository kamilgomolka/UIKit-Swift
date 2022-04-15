//
//  TransitionsMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

enum TransitionsMenuItem: String, CaseIterable {
    case inNavigation
    case modalDefault
    case fullScreenCoverVertical
    case fullScreenFlipHorizontal
    case fullScreenCrossDisolve
    case fullScreenPartialCurl
    case pageSheetCoverVertical
    case pageSheetFlipHorizontal
    case pageSheetCrossDisolve
    case pageSheetWithDelegate
    case sheetMedium
    case sheetMediumAndLarge
    
    var name: String {
        switch self {
        case .inNavigation:
            return "Push to NavigationController"
        case .modalDefault:
            return "Modal, Default properties"
        case .fullScreenCoverVertical:
            return "Modal, Full screen, Cover vertical"
        case .fullScreenFlipHorizontal:
            return "Modal, Full screen, Flip horizontal"
        case .fullScreenCrossDisolve:
            return "Modal, Full screen, Cross disolve"
        case .fullScreenPartialCurl:
            return "Modal, Full screen, Partial curl"
        case .pageSheetCoverVertical:
            return "Page sheet, Cover vertical"
        case .pageSheetFlipHorizontal:
            return "Page sheet, Flip horizontal"
        case .pageSheetCrossDisolve:
            return "Page sheet, Cross disolve"
        case .pageSheetWithDelegate:
            return "Page sheet + Detect closing"
        case .sheetMedium:
            return "Sheet, medium"
        case .sheetMediumAndLarge:
            return "Sheet, resizable (medium -> large)"
        }
    }
	
	var viewController: UIViewController? {
		switch self {
		case .inNavigation:
			return SingleLabelViewController(labelText: name, withCloseButton: false)
		case .modalDefault:
			return SingleLabelViewController(labelText: name, withCloseButton: false)
		case .fullScreenCoverVertical:
			let viewController = SingleLabelViewController(labelText: name, withCloseButton: true)
			let navigationController = UINavigationController(rootViewController: viewController)
			navigationController.modalPresentationStyle = .fullScreen
			navigationController.modalTransitionStyle = .coverVertical
			return navigationController
		case .fullScreenFlipHorizontal:
			let viewController = SingleLabelViewController(labelText: name, withCloseButton: true)
			let navigationController = UINavigationController(rootViewController: viewController)
			navigationController.modalPresentationStyle = .fullScreen
			navigationController.modalTransitionStyle = .flipHorizontal
			return navigationController
		case .fullScreenCrossDisolve:
			let viewController = SingleLabelViewController(labelText: name, withCloseButton: true)
			let navigationController = UINavigationController(rootViewController: viewController)
			navigationController.modalPresentationStyle = .fullScreen
			navigationController.modalTransitionStyle = .crossDissolve
			return navigationController
		case .fullScreenPartialCurl:
			let viewController = FullScreenPartialCurlTransitionViewController()
			let navigationController = UINavigationController(rootViewController: viewController)
			navigationController.modalPresentationStyle = .fullScreen
			navigationController.modalTransitionStyle = .partialCurl
			return navigationController
		case .pageSheetCoverVertical:
			let viewController = SingleLabelViewController(labelText: name, withCloseButton: true)
			viewController.modalPresentationStyle = .pageSheet
			viewController.modalTransitionStyle = .coverVertical
			return viewController
		case .pageSheetFlipHorizontal:
			let viewController = SingleLabelViewController(labelText: name, withCloseButton: true)
			viewController.modalPresentationStyle = .pageSheet
			viewController.modalTransitionStyle = .flipHorizontal
			return viewController
		case .pageSheetCrossDisolve:
			let viewController = SingleLabelViewController(labelText: name, withCloseButton: true)
			viewController.modalPresentationStyle = .pageSheet
			viewController.modalTransitionStyle = .crossDissolve
			return viewController
		case .pageSheetWithDelegate:
			let viewController = PageSheetWithDelegateTransitionViewController()
			let navigationController = UINavigationController(rootViewController: viewController)
			navigationController.modalPresentationStyle = .pageSheet
			return navigationController
		case .sheetMedium:
			let viewController = SingleLabelViewController(labelText: name, withCloseButton: false)
			if let sheet = viewController.sheetPresentationController {
				sheet.detents = [.medium()]
			}
			return viewController
		case .sheetMediumAndLarge:
			let viewController = SingleLabelViewController(labelText: name, withCloseButton: false)
			if let sheet = viewController.sheetPresentationController {
				sheet.detents = [.medium(), .large()]
				sheet.prefersGrabberVisible = true
			}
			return viewController
		}
	}	
}
