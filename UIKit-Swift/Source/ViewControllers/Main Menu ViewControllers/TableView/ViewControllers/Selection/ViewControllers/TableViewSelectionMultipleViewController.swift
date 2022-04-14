//
//  TableViewSelectionMultipleViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class TableViewSelectionMultipleViewController: SimpleTableViewController {
	
	// MARK: - Setup
	
	override func setupTableView() {
		super.setupTableView()
		
		tableView?.allowsMultipleSelection = true
	}
	
	// MARK: - UITableViewDelegate
    
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
