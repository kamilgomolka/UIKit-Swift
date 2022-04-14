//
//  CellStyleTitle3ViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class CellStyleTitle3ViewController: CellStyleBaseViewController {
	
	// MARK: - UITableViewDataSource
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = super.tableView(tableView, cellForRowAt: indexPath)
		let sectionType = CellStyleSection.allCases[indexPath.section]
		
		switch sectionType {
		case .subtitle:
			cell.textLabel?.font = UIFont.preferredFont(forTextStyle: .title3)
			cell.detailTextLabel?.font = UIFont.preferredFont(forTextStyle: .body)
		default:
			cell.textLabel?.font = UIFont.preferredFont(forTextStyle: .title3)
			cell.detailTextLabel?.font = UIFont.preferredFont(forTextStyle: .title3)
		}
		
		return cell
	}
}
