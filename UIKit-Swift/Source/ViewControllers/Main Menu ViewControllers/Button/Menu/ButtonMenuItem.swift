//
//  ButtonMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

enum ButtonMenuItem: String, MenuItemProtocol {
    case buttonStyles
    case systemSizes
    case cornerStyle
    case imagePlacement
    case toggleButton
    case other
    
    var name: String {
        return rawValue.autoGeneratedMenuItemName
    }    
    
    var viewController: UIViewController? {
//        switch self {
//        case .buttonStyles:
//            <#code#>
//        case .systemSizes:
//            <#code#>
//        case .cornerStyle:
//            <#code#>
//        case .imagePlacement:
//            <#code#>
//        case .toggleButton:
//            <#code#>
//        case .other:
//            <#code#>
//        }
        return ButtonCornerStyleViewController()
    }
}
