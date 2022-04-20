//
//  ToolbarSystemItemsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

class ToolbarSystemItemsViewController: UIViewController {
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = .systemBackground
		
		setupToolbars()
	}
	
	// MARK: - Functions
	
	func setupToolbars() {
		
		//
		// Toolbar 1
		//
		
		let label1 = newLabel()
		label1.text = "Add, Edit, Done, Cancel, Save"
		
		let toolbar1 = newToolbar(items: [
			UIBarButtonItem(systemItem: .add),
			UIBarButtonItem(systemItem: .edit),
			UIBarButtonItem(systemItem: .done),
			UIBarButtonItem(systemItem: .cancel),
			UIBarButtonItem(systemItem: .save)
		])
		
		//
		// Toolbar 2
		//
		
		let label2 = newLabel()
		label2.text = "Undo, Redo"
		
		let toolbar2 = newToolbar(items: [
			UIBarButtonItem(systemItem: .undo),
			UIBarButtonItem(systemItem: .redo)
		])
		
		//
		// Toolbar 3
		//
		
		let label3 = newLabel()
		label3.text = "Compose, Reply, Action, Organize, Trash"
		
		let toolbar3 = newToolbar(items: [
			UIBarButtonItem(systemItem: .compose),
			UIBarButtonItem(systemItem: .reply),
			UIBarButtonItem(systemItem: .action),
			UIBarButtonItem(systemItem: .organize),
			UIBarButtonItem(systemItem: .trash),
		])
		
		//
		// Toolbar 4
		//
		
		let label4 = newLabel()
		label4.text = "Bookmarks, Search, Refresh, Stop, Camera"
		
		let toolbar4 = newToolbar(items: [
			UIBarButtonItem(systemItem: .bookmarks),
			UIBarButtonItem(systemItem: .search),
			UIBarButtonItem(systemItem: .refresh),
			UIBarButtonItem(systemItem: .stop),
			UIBarButtonItem(systemItem: .camera),
		])
		
		//
		// Toolbar 5
		//
		
		let label5 = newLabel()
		label5.text = "Play, Pause, Rewind, Fast forward, Close"
		
		let toolbar5 = newToolbar(items: [
			UIBarButtonItem(systemItem: .play),
			UIBarButtonItem(systemItem: .pause),
			UIBarButtonItem(systemItem: .rewind),
			UIBarButtonItem(systemItem: .fastForward),
			UIBarButtonItem(systemItem: .close),
		])
		
		//
		// Add subviews
		//
		
		let subviews = [
			label1,
			toolbar1,
			label2,
			toolbar2,
			label3,
			toolbar3,
			label4,
			toolbar4,
			label5,
			toolbar5,
		]
								  
		for subview in subviews {
			view.addSubview(subview)
		}
		
		//
		// Create constraints
		//
		
		for (index, subview) in subviews.enumerated() {
			if index == 0 {
				subview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
			} else {
				let previousView = subviews[index - 1]
				subview.topAnchor.constraint(equalTo: previousView.bottomAnchor, constant: 8.0).isActive = true
			}
			
			let marginLeft = subview is UILabel ? 16.0 : 0.0
			subview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: marginLeft).isActive = true
			subview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		}
	}
	
	func newToolbar(items: [UIBarButtonItem]) -> UIToolbar {
		let toolbar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: 300.0, height: 44.0))
		toolbar.translatesAutoresizingMaskIntoConstraints = false
		toolbar.items = items
		return toolbar
	}
	
	func newLabel() -> UILabel {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 14.0)
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}
}
