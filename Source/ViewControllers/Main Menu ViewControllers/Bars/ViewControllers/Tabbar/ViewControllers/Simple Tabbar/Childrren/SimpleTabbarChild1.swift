//
//  SimpleTabbarChild1.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/04/2022.
//

import UIKit

class SimpleTabbarChild1: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	// MARK: - Properties
	
	let tableView = UITableView(frame: .zero, style: .plain)
	
	// MARK: - Init
	
	init() {
		super.init(nibName: nil, bundle: nil)
		
		print("SimpleTabbarChild1 - init")
		
		setupTabbarItem()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		
		print("SimpleTabbarChild1 - init(coder:)")
		
		setupTabbarItem()
	}
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		print("SimpleTabbarChild1 - loadView")
		
		setupTableView()
	}
	
	deinit {
		print("SimpleTabbarChild1 - deinit")
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		print("SimpleTabbarChild1 - viewWillAppear")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		
		print("SimpleTabbarChild1 - viewWillDisappear")
	}
	
	// MARK: - Setup
	
	func setupTableView() {
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
	
	func setupTabbarItem() {
		tabBarItem.title = "Child1"
		tabBarItem.image = UIImage(systemName: "star.fill")
	}
	
	// MARK: - UITableViewDataSource
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 40
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
