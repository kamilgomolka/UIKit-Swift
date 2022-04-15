//
//  CollectionViewMenuItem.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 14/04/2022.
//

import UIKit

enum CollectionViewMenuItem: MenuItemProtocol {
    case grid
    case sections
    case badge
    case paging
    
    var name: String {
        switch self {
        case .grid:
            return "Basic grid"
        case .sections:
            return "Sections with headers"
        case .badge:
            return "Badge icon"
        case .paging:
            return "Paging (Orthogonal scrolling)"
        }
    }
	
	var viewController: UIViewController? {
		switch self {
		case .grid:
			return CollectionViewGridViewController()
		case .sections:
			return CollectionViewSectionsViewController()
		case .badge:
			return CollectionViewBadgeViewController()
		case .paging:
			return CollectionViewPagingViewController()
		}
	}
}
