//
//  TableViewSwipeActionsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/04/2022.
//

import UIKit

class TableViewSwipeActionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	// MARK: - Properties
	
	let tableView = UITableView(frame: .zero, style: .plain)
	var items: [String] = []
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		populateItems()
		setupTableView()
	}
	
	// MARK: - Setup
	
	func setupTableView() {
		tableView.dataSource = self
		tableView.delegate = self
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
		view.addSubview(tableView)
		
		tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
	}
	
	// MARK: - Modify data
	
	func populateItems() {
		items = (0..<20).map { "Item [\($0)]: Long text 1, long text 2, long text 3, long text 4, long text 5, long text 6" }
	}
	
	func deleteItem(at indexPath: IndexPath) {
		items.remove(at: indexPath.row)
		tableView.deleteRows(at: [indexPath], with: .automatic)
	}
	
	// MARK: - UITableViewDataSource
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return items.count
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100.0
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)
		let item = items[indexPath.row]
		
		cell.textLabel?.text = item
		
		return cell
	}
	
	// MARK: - UITableViewDelegate
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
	}
	
	func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
		let cartAction = UIContextualAction(style: .normal, title: nil) { [weak self] (action, view, completionHandler) in
			guard let self = self else {
				return
			}
			
			let item = self.items[indexPath.row]
			print("\"\(item)\" added to cart.")
			completionHandler(true)
		}
		cartAction.backgroundColor = .systemOrange
		cartAction.image = UIImage(systemName: "cart.fill")
		
		return UISwipeActionsConfiguration(actions: [cartAction])
	}
	
	func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
		let deleteAction = UIContextualAction(style: .destructive, title: nil) { [weak self] (action, view, completionHandler) in
			self?.deleteItem(at: indexPath)
			completionHandler(true)
		}
		deleteAction.image = UIImage(systemName: "trash.fill")
		
		let shareAction = UIContextualAction(style: .normal, title: "Share") { [weak self] (action, view, completionHandler) in
			guard let self = self else {
				return
			}
			
			let item = self.items[indexPath.row]
			print("\"\(item)\" shared.")
			completionHandler(true)
		}
		shareAction.backgroundColor = .systemTeal
		shareAction.image = UIImage(systemName: "square.and.arrow.up.fill")
		
		let favoritesAction = UIContextualAction(style: .normal, title: "Add to favorites") { [weak self] (action, view, completionHandler) in
			guard let self = self else {
				return
			}
			
			let item = self.items[indexPath.row]
			print("\"\(item)\" added to favorites.")
			completionHandler(true)
		}
		
		return UISwipeActionsConfiguration(actions: [deleteAction, shareAction, favoritesAction])
	}
}
