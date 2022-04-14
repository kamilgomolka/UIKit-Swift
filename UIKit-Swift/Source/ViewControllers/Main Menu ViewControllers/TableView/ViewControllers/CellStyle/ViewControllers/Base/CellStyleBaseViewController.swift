//
//  CellStyleBaseViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class CellStyleBaseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	// MARK: - Properties
	
	let tableView = UITableView(frame: .zero, style: .insetGrouped)
	
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
				
		for sectionType in CellStyleSection.allCases {
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
		return CellStyleSection.allCases.count
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		let sectionType = CellStyleSection.allCases[section]
		return sectionType.sectionTitle
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let sectionType = CellStyleSection.allCases[indexPath.section]
		let cell = sectionType.dequeueReusableCell(tableView: tableView, indexPath: indexPath)
		
		cell.textLabel?.text = "Title"
		cell.detailTextLabel?.text = "Detail"
		
		return cell
	}
}
