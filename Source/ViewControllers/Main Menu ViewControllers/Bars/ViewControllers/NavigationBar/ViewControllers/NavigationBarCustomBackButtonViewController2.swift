//
//  NavigationBarCustomBackButtonViewController2.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 19/04/2022.
//

import UIKit

class NavigationBarCustomBackButtonViewController2: BaseNavigationBarViewController {
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
				
		setupBackButton()
		enableSwipeToPop()
	}
	
	func setupBackButton() {
		let backButton = UIBarButtonItem(
			title: "[BACK]",
			style: .plain,
			target: self,
			action: #selector(backButtonClicked)
		)
		
		navigationItem.leftBarButtonItem = backButton
	}
	
	///
	/// Warnings:
	///
	/// 1) If possible, customize backButton, instead of assigning custom button  to leftBarButtonItem.
	///   It is usually better to stick with system solution.
	///   But if you really need to set your own button,
	///   then please mind, that <swipe to pop> will stop working and you have to re-enable it.
	///   It can cause some side-effects, as in below points:
	///
	/// 2) In current implementation of `enableSwipeToPop()`,
	///   we are changing `self.navigationController`.
	///   Gesture will stay enabled after current viewController is closed.
	///   This is not always desired. For example - if we have another ViewController
	///   in which we  hidden Back button on purpose,
	///   it shouldn't be possible to close it with gesture.
	///
	/// 3) Might cause some bugs (not sure).
	///   Related topic:
	///   https://www.pixeldock.com/blog/enable-the-swipe-back-gesture-aka-interactive-pop-gesture-when-using-a-uinavigationcontroller-with-custom-back-button/
	///
	func enableSwipeToPop() {
		navigationController?.interactivePopGestureRecognizer?.delegate = nil
		navigationController?.interactivePopGestureRecognizer?.isEnabled = true
	}
	
	@objc func backButtonClicked() {
		navigationController?.popViewController(animated: true)
	}
}
