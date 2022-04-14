//
//  CellSelectionStyleItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

enum CellSelectionStyleItem: String, CaseIterable {
    case blue
    case gray
    case `default`
	
	var uiKitStyle: UITableViewCell.SelectionStyle {
		switch self {
		case .blue:
			return UITableViewCell.SelectionStyle.blue
		case .gray:
			return UITableViewCell.SelectionStyle.gray
		case .default:
			return UITableViewCell.SelectionStyle.default
		}
	}
}
