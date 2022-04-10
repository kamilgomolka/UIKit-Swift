//
//  TextFieldMenuItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

enum TextFieldMenuItem: MenuItemProtocol {
    case borderStyle
    case clearButton
    case disabled
    case traits
    case keyboardType
    case returnKeyType
    case aligmnent
	case password
    
    var name: String {
        switch self {
        case .borderStyle:
            return "Border style"
        case .clearButton:
            return "Clear button"
        case .disabled:
            return "Disabled"
        case .traits:
            return "Text input traits"
        case .keyboardType:
            return "Keyboard type"
        case .returnKeyType:
            return "Return key type"
		case .aligmnent:
			return "Text alignment"
		case .password:
			return "Password"
        }
    }
	
	var viewController: UIViewController? {
        switch self {
        case .borderStyle:
            return TextFieldBorderStyleViewController()
        case .clearButton:
            return TextFieldClearButtonViewController()
        case .disabled:
            return TextFieldDisabledViewController()
        case .traits:
            return TextFieldTraitsViewController()
        case .keyboardType:
            return TextFieldKeyboardTypeViewController()
        case .returnKeyType:
            return TextFieldReturnKeyTypeViewController()
		case .aligmnent:
			return TextFieldAlignmentViewController()
		case .password:
            return TextFieldPasswordViewController()
        }
    }
}
