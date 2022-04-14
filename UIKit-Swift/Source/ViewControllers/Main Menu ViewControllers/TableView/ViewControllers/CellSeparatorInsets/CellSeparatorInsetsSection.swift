//
//  CellSeparatorInsetsSection.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

enum CellSeparatorInsetsSection: String, CaseIterable {
	case `default`
	case leftSide
	case bothSides
	case zero
	case indentation1
	case indentation2
	case indentation3
	
	var sectionTitle: String {
		switch self {
		case .default:
			return "Default"
		case .leftSide:
			return "Custom (16, 0)"
		case .bothSides:
			return "Custom (32, 32)"
		case .zero:
			return "Zero"
		case .indentation1:
			return "Indentation level = 1"
		case .indentation2:
			return "Indentation level = 2"
		case .indentation3:
			return "Indentation level = 3"
		}
	}
	
	var cellClass: AnyClass {
		switch self {
		case .default:
			return DefaultSeparatorInsetTableViewCell.self
		case .leftSide:
			return LeftSideSeparatorInsetTableViewCell.self
		case .bothSides:
			return BothSidesSeparatorInsetTableViewCell.self
		case .zero:
			return ZeroSeparatorInsetTableViewCell.self
		case .indentation1:
			return Indentation1TableViewCell.self
		case .indentation2:
			return Indentation2TableViewCell.self
		case .indentation3:
			return Indentation3TableViewCell.self
		}
	}
	
	var cellReuseIdentifier: String {
		switch self {
		case .default:
			return DefaultSeparatorInsetTableViewCell.identifier
		case .leftSide:
			return LeftSideSeparatorInsetTableViewCell.identifier
		case .bothSides:
			return BothSidesSeparatorInsetTableViewCell.identifier
		case .zero:
			return ZeroSeparatorInsetTableViewCell.identifier
		case .indentation1:
			return Indentation1TableViewCell.identifier
		case .indentation2:
			return Indentation2TableViewCell.identifier
		case .indentation3:
			return Indentation3TableViewCell.identifier
		}
	}
	
	func registerCell(tableView: UITableView) {
		tableView.register(cellClass, forCellReuseIdentifier: cellReuseIdentifier)
	}
	
	func dequeueReusableCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
		return tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
	}
}
