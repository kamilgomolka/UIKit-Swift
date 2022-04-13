//
//  TextViewMenuItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

enum TextViewMenuItem: MenuItemProtocol {
	case editable
	case nonEditable
	case nonEditableNonSelectable
	case dataDetectors
	
	var name: String {
		switch self {
		case .editable:
			return "Editable"
		case .nonEditable:
			return "Non editable"
		case .nonEditableNonSelectable:
			return "Non editable, non selectable"
		case .dataDetectors:
			return "Data detectors"
		}
	}
	
	var viewController: UIViewController? {
		switch self {
		case .editable:
			return TextViewEditableViewController()
		case .nonEditable:
			return TextViewNonEditableViewController()
		case .nonEditableNonSelectable:
			return TextViewNonEditableNonSelectableViewController()
		case .dataDetectors:
			return TextViewDataDetectorsViewController()
		}
	}
}
