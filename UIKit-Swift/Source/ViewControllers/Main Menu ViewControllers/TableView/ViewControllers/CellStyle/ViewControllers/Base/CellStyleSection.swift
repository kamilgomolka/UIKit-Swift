//
//  CellStyleSection.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

enum CellStyleSection: String, CaseIterable {
    case `default`
    case value1
    case value2
    case subtitle
    
    var sectionTitle: String {
        switch self {
        case .default:
            return "Basic (Default)"
        case .value1:
            return "Right detail (Value1)"
        case .value2:
            return "Left detail (Value2)"        
        case .subtitle:
            return "Subtitle"
        }
    }
	
	var cellClass: AnyClass {
		switch self {
		case .default:
			return DefaultStyleTableViewCell.self
		case .value1:
			return Value1StyleTableViewCell.self
		case .value2:
			return Value2StyleTableViewCell.self
		case .subtitle:
			return SubtitleStyleTableViewCell.self
		}
	}
	
	var cellReuseIdentifier: String {
		switch self {
		case .default:
			return DefaultStyleTableViewCell.identifier
		case .value1:
			return Value1StyleTableViewCell.identifier
		case .value2:
			return Value2StyleTableViewCell.identifier
		case .subtitle:
			return SubtitleStyleTableViewCell.identifier
		}
	}
	
	func registerCell(tableView: UITableView) {
		tableView.register(cellClass, forCellReuseIdentifier: cellReuseIdentifier)
	}
    
	func dequeueReusableCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
		return tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
	}
}
