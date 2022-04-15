//
//  TableViewMenuItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

enum TableViewMenuItem: MenuItemProtocol {
    case tableViewStyle
    case tableViewSeparatorStyle
    case tableViewSelection
    case cellCellStyle
    case cellSelectionStyle
    case cellAccessoryType
    case cellSeparatorInsets
    case headersAndFootters
    case sectionIndex
    case editing
    
    var name: String {
        switch self {
        case .tableViewStyle:
            return "TableView.Style"
        case .tableViewSeparatorStyle:
            return "TableView.SeparatorStyle"
        case .tableViewSelection:
            return "TableView.Selection"
        case .cellCellStyle:
            return "Cell.Style"
        case .cellSelectionStyle:
            return "Cell.SelectionStyle"
        case .cellAccessoryType:
            return "Cell.AccessoryType"
        case .cellSeparatorInsets:
            return "Cell.SeparatorInsets"
        case .headersAndFootters:
            return "Headers and Footters"
        case .sectionIndex:
            return "SectionIndex"
        case .editing:
            return "Editing modes"
        }
    }
    
    var viewController: UIViewController? {
        switch self {
        case .tableViewStyle:
            return TableViewStyleMenuViewController()
        case .tableViewSeparatorStyle:
            return TableViewSeparatorStyleMenuViewController()
        case .tableViewSelection:
            return TableViewSelectionMenuViewController()
        case .cellCellStyle:
            return CellStyleMenuViewController()
        case .cellSelectionStyle:
            return CellSelectionStyleViewController()
        case .cellAccessoryType:
            return CellAccessoryTypeViewController()
        case .cellSeparatorInsets:
            return CellSeparatorInsetsViewController()
        case .headersAndFootters:
            return TableViewHeadersAndFoottersViewController()
        case .sectionIndex:
            return TableViewSectionIndexViewController()
        case .editing:
            return TableViewEditingMenuViewController()
        }
    }
}
