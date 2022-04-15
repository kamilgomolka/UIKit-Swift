//
//  TableViewAddAndDeleteViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/04/2022.
//

import UIKit

class TableViewAddAndDeleteViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	// MARK: - Properties
	
	let tableView = UITableView(frame: .zero, style: .plain)
	var items: [(index: Int, name: String)] = []
	var editMode = false
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		populateItems()
		setupTableView()
		updateNavigationBar()
	}
	
	// MARK: - Setup
	
	func setupTableView() {
		tableView.dataSource = self
		tableView.delegate = self
		tableView.allowsSelectionDuringEditing = true
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
		view.addSubview(tableView)
		
		tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
	}
	
	func updateNavigationBar() {
		if tableView.isEditing {
			navigationItem.hidesBackButton = true
			let editButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(endEdition))
			navigationItem.rightBarButtonItem = editButton
		} else {
			navigationItem.hidesBackButton = false
			let editButton = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(startEdition))
			navigationItem.rightBarButtonItem = editButton
		}
	}
	
	// MARK: - Actions
	
	@objc func startEdition() {
		addFadeAnimation {
			self.editMode = true
			self.tableView.isEditing = true
			self.tableView.reloadData()
			self.updateNavigationBar()
		}
	}
	
	@objc func endEdition() {
		addFadeAnimation {
			self.editMode = false
			self.tableView.isEditing = false
			self.tableView.reloadData()
			self.updateNavigationBar()
		}
	}
	
	// MARK: - Modify data
	
	func populateItems() {
		items = (0..<20).map { (index: $0, name: "Item [\($0)]") }
	}
	
	func addItem() {
		let newIndex: Int
		
		if let lastIndex = items.last?.index {
			newIndex = lastIndex + 1
		} else {
			newIndex = 0
		}
		
		items.append((index: newIndex, name: "Item [\(newIndex)]"))
		tableView.insertRows(at: [IndexPath(row: items.count - 1, section: 0)], with: .automatic)
	}
	
	func deleteItem(at indexPath: IndexPath) {
		items.remove(at: indexPath.row)
		tableView.deleteRows(at: [indexPath], with: .automatic)
	}
	
	// MARK: - UITableViewDataSource
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		if editMode {
			return items.count + 1
		} else {
			return items.count
		}
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)
		
		if indexPath.row < items.count {
			let item = items[indexPath.row]
			cell.textLabel?.text = item.name
		} else {
			cell.textLabel?.text = "Add new item"
		}
		
		return cell
	}
	
	// MARK: - UITableViewDelegate
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		
		if indexPath.row < items.count {
			print("Item selected")
		} else {
			addItem()
		}
	}
	
	func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
		if indexPath.row < items.count {
			return .delete
		} else {
			return .insert
		}
	}
	
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		switch editingStyle {
		case .delete:
			deleteItem(at: indexPath)
		case .insert:
			addItem()
		default:
			break
		}
	}
	
	// MARK: - Animations
	
	func addFadeAnimation(animations: () -> Void) {
		animations()
		
		let transition = CATransition()
		transition.duration = 0.25
		view.layer.add(transition, forKey: "layerAnimation")
	}
}
