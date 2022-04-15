//
//  MainMenuItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/03/2022.
//

import UIKit

enum MainMenuItem: MenuItemProtocol {
	case allControls
	case label
	case button
	case textField
	case textView
	case scrollView
	case tableView
	case collectionView
	case transitions
	
	var name: String {
		switch self {
		case .allControls:
			return "All controls"
		case .label:
			return "Label"
		case .button:
			return "Button"
		case .textField:
			return "TextField"
		case .textView:
			return "TextView"
		case .scrollView:
			return "ScrollView"
		case .tableView:
			return "TableView"
		case .collectionView:
			return "CollectionView"
		case .transitions:
			return "ViewController transitions"
		}
	}
    
    var viewController: UIViewController? {
        switch self {
        case .allControls:
            return AllControlsViewController()
        case .label:
            return LabelMenuViewController()
        case .button:
            return ButtonMenuViewController()
		case .textField:
			return TextFieldMenuViewController()
		case .textView:
			return TextViewMenuViewController()
		case .scrollView:
			return ScrollViewMenuViewController()
		case .tableView:
			return TableViewMenuViewController()
		case .collectionView:
			return CollectionViewMenuViewController()
//		case .transitions:
//			return ViewControllerTransitions
			
		default:
			return nil
        }
    }
}
