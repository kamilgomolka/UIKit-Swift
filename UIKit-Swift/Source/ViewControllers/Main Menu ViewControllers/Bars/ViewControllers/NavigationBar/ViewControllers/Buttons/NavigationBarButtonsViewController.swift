//
//  NavigationBarButtonsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 18/04/2022.
//

import UIKit

class NavigationBarButtonsViewController: BaseNavigationBarViewController {
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		navigationItem.leftItemsSupplementBackButton = true
		
		navigationItem.leftBarButtonItem = UIBarButtonItem(
			barButtonSystemItem: .cancel,
			target: self,
			action: #selector(cancelButtonClicked)
		)
		
		navigationItem.rightBarButtonItem = UIBarButtonItem(
			barButtonSystemItem: .done,
			target: self,
			action: #selector(doneButtonClicked)
		)
	}
	
	@objc func cancelButtonClicked() {
		print("Cancel button clicked")
	}
	
	@objc func doneButtonClicked() {
		print("Done button clicked")
	}
}
