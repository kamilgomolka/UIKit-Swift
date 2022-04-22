//
//  TableViewSeparatorStyleLineViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class TableViewSeparatorStyleLineViewController: SimpleTableViewController {
    
	// MARK: - Setup
	
	override func setupTableView() {
		super.setupTableView()
		
		tableView?.separatorStyle = .singleLine
	}
}
