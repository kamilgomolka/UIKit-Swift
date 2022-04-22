//
//  SimpleToolbarViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

class SimpleToolbarViewController: StackViewController {
	
	// MARK: - Properties
	
	var label: UILabel = {
		let label = UILabel()
		label.text = "This is some content in ScrollView, but small enough to avoid being scrollable."
		label.numberOfLines = 0
		label.font = UIFont.preferredFont(forTextStyle: .body)
		return label
	}()
	
	var toolbar: UIToolbar = {
		//
		// Initializing toolbar with a frame silences AutoLayout warning.
		//
		let toolbar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: 300.0, height: 44.0))
		toolbar.translatesAutoresizingMaskIntoConstraints = false
		return toolbar
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		setupToolbar()
		updateContentInsets()
	}
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		stackView.addArrangedSubview(label)
		view.addSubview(toolbar)
	}
	
	override func createConstraints() {
		super.createConstraints()
		
		toolbar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		toolbar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		toolbar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
	}
	
	func setupToolbar() {
		let actionItem = UIBarButtonItem(
			systemItem: .action,
			primaryAction: UIAction(handler: { _ in
				print("Action item clicked")
			})
		)
		
		let refreshItem = UIBarButtonItem(
			systemItem: .refresh,
			primaryAction: UIAction(handler: { _ in
				print("Refresh item clicked")
			})
		)
		
		let trashItem = UIBarButtonItem(
			systemItem: .trash,
			primaryAction: UIAction(handler: { _ in
				print("Trash item clicked")
			})
		)
		
		toolbar.items = [
			actionItem,
			UIBarButtonItem(systemItem: .flexibleSpace),
			refreshItem,
			UIBarButtonItem(systemItem: .flexibleSpace),
			trashItem
		]
	}
	
	func updateContentInsets() {
		let insets = UIEdgeInsets(
			top: 0.0,
			left: 0.0,
			bottom: toolbar.frame.size.height,
			right: 0.0
		)
		
		scrollView.contentInset = insets
		scrollView.scrollIndicatorInsets = insets
	}
}
