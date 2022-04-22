//
//  TextViewMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import Foundation

struct TextViewMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Editable",
				viewControllerProvider: { TextViewEditableViewController() }
			),
			MenuItem(
				name: "Non editable",
				viewControllerProvider: { TextViewNonEditableViewController() }
			),
			MenuItem(
				name: "Non editable, non selectable",
				viewControllerProvider: { TextViewNonEditableNonSelectableViewController() }
			),
			MenuItem(
				name: "Data detectors",
				viewControllerProvider: { TextViewDataDetectorsViewController() }
			)
		]
	}
}
