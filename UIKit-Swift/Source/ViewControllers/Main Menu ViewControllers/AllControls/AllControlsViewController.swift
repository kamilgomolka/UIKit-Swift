//
//  AllControlsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/03/2022.
//

import UIKit

class AllControlsViewController: StackViewController {
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = .systemGroupedBackground
		stackView.spacing = 16.0
		scrollView.keyboardDismissMode = .onDrag
	}
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		let subviews = [
			AllControlsButtonView(),
			AllControlsSwitchView(),
			AllControlsSegmentedControlView(),
			AllControlsTextFieldView(),
			AllControlsStepperView(),
			AllControlsSliderView(),
			AllControlsActivityIndicatorView(),
			AllControlsProgressView(),
			AllControlsPageControlView()
		]
		
		for subview in subviews {
			stackView.addArrangedSubview(subview)
		}
	}
}
