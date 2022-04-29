//
//  ControlsMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 30/04/2022.
//

import Foundation

struct ControlsMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "ActivityIndicator",
				viewControllerProvider: { ActivityIndicatorViewController() }
			),
			MenuItem(
				name: "Button",
				nestedItems: ButtonMenuItems.all
			),
			MenuItem(
				name: "Label",
				nestedItems: LabelMenuItems.all
			),
			MenuItem(
				name: "PageControl",
				viewControllerProvider: { PageControlViewController() }
			),
			MenuItem(
				name: "ProgressView",
				viewControllerProvider: { ProgressViewController() }
			),
			MenuItem(
				name: "SegmentedControl",
				viewControllerProvider: { SegmentedControlViewController() }
			),
			MenuItem(
				name: "Slider",
				viewControllerProvider: { SliderViewController() }
			),
			MenuItem(
				name: "Stepper",
				viewControllerProvider: { StepperViewController() }
			),
			MenuItem(
				name: "Switch",
				viewControllerProvider: { SwitchViewController() }
			),
			MenuItem(
				name: "TextField",
				nestedItems: TextFieldMenuItems.all
			),
			MenuItem(
				name: "TextView",
				nestedItems: TextViewMenuItems.all
			),
		]
	}
}
