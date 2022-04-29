//
//  TextFieldMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import Foundation

struct TextFieldMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Border style",
				viewControllerProvider: { TextFieldBorderStyleViewController() }
			),
			MenuItem(
				name: "Clear button",
				viewControllerProvider: { TextFieldClearButtonViewController() }
			),
			MenuItem(
				name: "Disabled",
				viewControllerProvider: { TextFieldDisabledViewController() }
			),
			MenuItem(
				name: "Text input traits",
				viewControllerProvider: { TextFieldTraitsViewController() }
			),
			MenuItem(
				name: "Keyboard type",
				viewControllerProvider: { TextFieldKeyboardTypeViewController() }
			),
			MenuItem(
				name: "Return key type",
				viewControllerProvider: { TextFieldReturnKeyTypeViewController() }
			),
			MenuItem(
				name: "Text alignment",
				viewControllerProvider: { TextFieldAlignmentViewController() }
			),
			MenuItem(
				name: "Password",
				viewControllerProvider: { TextFieldPasswordViewController() }
			)
		]
	}
}
