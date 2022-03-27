//
//  LabelMenuItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/03/2022.
//

import UIKit

enum LabelMenuItem: MenuItemProtocol {
    case textStyles
    case fontSizes
    case fontWeights
    
    var name: String {
        switch self {
        case .textStyles:
            return "System text styles"
        case .fontSizes:
            return "Font sizes in pt"
        case .fontWeights:
            return "Font weights"
        }
    }
    
    var viewController: UIViewController? {
        switch self {
        case .textStyles:
            return TextStylesViewController()
        case .fontSizes:
            return FontSizesViewController()
        case .fontWeights:
            return FontWeightsViewController()
        }
    }
}
