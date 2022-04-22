//
//  CellAccessoryTypeViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class CellAccessoryTypeViewController: SimpleTableViewController {
    
	// MARK: - UITableViewDataSource
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return CellAccessoryTypeItem.allCases.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = super.tableView(tableView, cellForRowAt: indexPath)
		let accessoryTypeItem = CellAccessoryTypeItem.allCases[indexPath.row]
		
		cell.textLabel?.text = accessoryTypeItem.rawValue
		cell.accessoryType = accessoryTypeItem.uiKitValue
		
		return cell
	}
}
