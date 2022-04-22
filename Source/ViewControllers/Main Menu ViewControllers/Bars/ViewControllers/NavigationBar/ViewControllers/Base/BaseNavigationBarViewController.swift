//
//  BaseNavigationBarViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 18/04/2022.
//

import UIKit

class BaseNavigationBarViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	// MARK: - Properties
	
	var tableView: UITableView?
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		tableView = createTableView()
		setupTableView()
	}
	
	// MARK: - Setup
	
	func createTableView() -> UITableView {
		return UITableView(frame: .zero, style: .plain)
	}
	
	func setupTableView() {
		guard let tableView = tableView else {
			return
		}
		
		tableView.dataSource = self
		tableView.delegate = self
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.register(BaseNavigationBarCell.self, forCellReuseIdentifier: BaseNavigationBarCell.identifier)
		view.addSubview(tableView)
		
		tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
	}
	
	// MARK: - UITableViewDataSource
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 50
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: BaseNavigationBarCell.identifier, for: indexPath)
		
		cell.textLabel?.text = "Cell number \(indexPath.row)"
		cell.imageView?.image = UIImage(systemName: "folder.circle.fill")
		return cell
	}
	
	// MARK: - UITableViewDelegate
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
	}
}

