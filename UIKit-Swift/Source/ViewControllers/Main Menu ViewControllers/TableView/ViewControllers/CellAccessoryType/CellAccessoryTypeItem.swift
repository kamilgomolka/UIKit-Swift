//
//  CellAccessoryTypeItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

enum CellAccessoryTypeItem: String, CaseIterable {
    case disclosureIndicator
    case detailDisclosureButton
    case checkmark
	case detailButton
    
	var uiKitValue: UITableViewCell.AccessoryType {
		switch self {
		case .disclosureIndicator:
			return UITableViewCell.AccessoryType.disclosureIndicator
		case .detailDisclosureButton:
			return UITableViewCell.AccessoryType.detailDisclosureButton
		case .checkmark:
			return UITableViewCell.AccessoryType.checkmark
		case .detailButton:
			return UITableViewCell.AccessoryType.detailButton
		}
	}
}
