//
//  ToolbarItemStyleViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

class ToolbarItemStyleViewController: UIViewController {
	
	// MARK: - Properties
	
	var toolbar: UIToolbar = {
		let toolbar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: 300.0, height: 44.0))
		toolbar.translatesAutoresizingMaskIntoConstraints = false
		return toolbar
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = UIColor.systemBackground
		
		setupToolbar()
	}
	
	// MARK: - Functions
	
	func setupToolbar() {
		view.addSubview(toolbar)
		
		toolbar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		toolbar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		toolbar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
		
		let plainItem = UIBarButtonItem(
			title: "Plain",
			style: .plain,
			target: nil,
			action: nil
		)
		
		let doneItem = UIBarButtonItem(
			title: "Done",
			style: .done,
			target: nil,
			action: nil
		)
		
		toolbar.items = [
			plainItem,
			doneItem
		]
	}
}

