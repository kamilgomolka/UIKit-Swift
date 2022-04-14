//
//  CellSelectionStyleViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class CellSelectionStyleViewController: SimpleTableViewController {
	
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CellSelectionStyleItem.allCases.count
    }
    
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = super.tableView(tableView, cellForRowAt: indexPath)
        let selectionStyle = CellSelectionStyleItem.allCases[indexPath.row]
		
		cell.textLabel?.text = selectionStyle.rawValue
		cell.selectionStyle = selectionStyle.uiKitStyle
        
		return cell
    }	
	
	// MARK: - UITableViewDelegate
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
	}
}
