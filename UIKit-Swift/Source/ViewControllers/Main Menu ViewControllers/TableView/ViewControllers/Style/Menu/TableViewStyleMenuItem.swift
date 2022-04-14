//
//  TableViewStyleMenuItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

enum TableViewStyleMenuItem: String, MenuItemProtocol {
    case plain
    case grouped
    case insetGrouped
    
    var name: String {
        return rawValue.autoGeneratedMenuItemName
    }
    
	var viewController: UIViewController? {
        switch self {
        case .plain:
            return TableViewStylePlainViewController()
        case .grouped:
            return TableViewStyleGroupedViewController()
        case .insetGrouped:
            return TableViewStyleInsetGroupedViewController()
        }
    }
}
