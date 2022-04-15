//
//  TransitionsMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

class TransitionsMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	// MARK: - Properties
	
	let tableView = UITableView(frame: .zero, style: .insetGrouped)
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		setupTableView()
	}
	
	func setupTableView() {
		tableView.dataSource = self
		tableView.delegate = self
		tableView.register(MenuCell.self, forCellReuseIdentifier: MenuCell.identifier)
		tableView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(tableView)
		
		tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
	}
	
	// MARK: - UITableViewDataSource
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return TransitionsMenuItem.allCases.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: MenuCell.identifier, for: indexPath) as? MenuCell else {
			return UITableViewCell()
		}
		
		let allCasesArray = Array(TransitionsMenuItem.allCases)
		let menuItem = allCasesArray[indexPath.row]
		
		cell.textLabel?.text = menuItem.name
		
		return cell
	}
	
	// MARK: - UITableViewDelegate
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		
		let allCasesArray = Array(TransitionsMenuItem.allCases)
		let menuItem = allCasesArray[indexPath.row]
		presentViewController(menuItem: menuItem)
	}
	
	// MARK: - Present ViewController
	
	func presentViewController(menuItem: TransitionsMenuItem) {
		guard let viewController = menuItem.viewController else {
			return
		}
		
		switch menuItem {
		case .inNavigation:
			navigationController?.pushViewController(viewController, animated: true)
		default:
			present(viewController, animated: true)
		}
	}
}
