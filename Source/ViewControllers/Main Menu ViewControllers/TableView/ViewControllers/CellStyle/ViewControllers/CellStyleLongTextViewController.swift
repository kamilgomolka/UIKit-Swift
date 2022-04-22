//
//  CellStyleLongTextViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class CellStyleLongTextViewController: CellStyleBaseViewController {
	
	// MARK: - UITableViewDataSource
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = super.tableView(tableView, cellForRowAt: indexPath)
		let sectionType = CellStyleSection.allCases[indexPath.section]
		
		switch sectionType {
		case .default:
			cell.textLabel?.font = UIFont.preferredFont(forTextStyle: .body)
			cell.textLabel?.numberOfLines = 0
		case .value2:
			cell.textLabel?.font = UIFont.preferredFont(forTextStyle: .body)
			cell.detailTextLabel?.font = UIFont.preferredFont(forTextStyle: .body)
		case .value1:
			cell.textLabel?.font = UIFont.preferredFont(forTextStyle: .body)
			cell.detailTextLabel?.font = UIFont.preferredFont(forTextStyle: .body)
		case .subtitle:
			cell.textLabel?.font = UIFont.preferredFont(forTextStyle: .body)
			cell.detailTextLabel?.font = UIFont.preferredFont(forTextStyle: .footnote)
			cell.textLabel?.numberOfLines = 0
			cell.detailTextLabel?.numberOfLines = 0
		}
		
		cell.textLabel?.text = "Title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title"
		
		cell.detailTextLabel?.text = "Detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail"
		
		return cell
	}
}
