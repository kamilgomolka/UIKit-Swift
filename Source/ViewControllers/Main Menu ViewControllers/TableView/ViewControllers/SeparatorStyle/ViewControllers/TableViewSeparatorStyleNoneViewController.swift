//
//  TableViewSeparatorStyleNoneViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class TableViewSeparatorStyleNoneViewController: SimpleTableViewController {
    
	// MARK: - Setup
	
	override func setupTableView() {
		super.setupTableView()
		
		tableView?.separatorStyle = .none
	}
}
