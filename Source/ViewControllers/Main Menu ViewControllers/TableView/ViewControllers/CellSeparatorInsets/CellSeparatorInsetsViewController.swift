//
//  CellSeparatorInsetsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class CellSeparatorInsetsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	// MARK: - Properties
	
	let tableView = UITableView(frame: .zero, style: .plain)
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		setupTableView()
	}
	
	// MARK: - Setup
	
	func setupTableView() {
		tableView.dataSource = self
		tableView.delegate = self
		tableView.allowsSelection = false
		tableView.translatesAutoresizingMaskIntoConstraints = false
				
		for sectionType in CellSeparatorInsetsSection.allCases {
			sectionType.registerCell(tableView: tableView)
		}
		
		view.addSubview(tableView)
		
		tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
	}
	
	// MARK: - UITableViewDataSource
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return CellSeparatorInsetsSection.allCases.count
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 3
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let sectionType = CellSeparatorInsetsSection.allCases[indexPath.section]
		let cell = sectionType.dequeueReusableCell(tableView: tableView, indexPath: indexPath)
		
		cell.textLabel?.text = sectionType.sectionTitle
		
		return cell
	}
}
