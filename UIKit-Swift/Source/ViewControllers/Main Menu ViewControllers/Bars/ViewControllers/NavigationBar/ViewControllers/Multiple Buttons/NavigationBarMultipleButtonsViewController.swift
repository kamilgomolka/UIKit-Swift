//
//  NavigationBarMultipleButtonsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 19/04/2022.
//

import UIKit

class NavigationBarMultipleButtonsViewController: StackViewController {
	
	// MARK: - Properties
	
	var itemTypeLabel: UILabel = {
		let label = UILabel()
		label.text = "Item type:"
		label.font = UIFont.preferredFont(forTextStyle: .title3)
		return label
	}()
	
	var itemTypeSegmentedControl: UISegmentedControl = {
		let segmentedControl = UISegmentedControl(items: ["Image", "Text"])
		segmentedControl.selectedSegmentIndex = 0
		return segmentedControl
	}()
	
	var leftItemsLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .title3)
		return label
	}()
	
	var leftItemsStepper: UIStepper = {
		let stepper = UIStepper()
		stepper.minimumValue = 0
		stepper.maximumValue = 20
		stepper.value = 3
		return stepper
	}()
	
	var rightItemsLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .title3)
		return label
	}()
	
	var rightItemsStepper: UIStepper = {
		let stepper = UIStepper()
		stepper.minimumValue = 0
		stepper.maximumValue = 20
		stepper.value = 3
		return stepper
	}()
	
	var backButtonVisibilityLabel: UILabel = {
		let label = UILabel()
		label.text = "Back button visible:"
		label.font = UIFont.preferredFont(forTextStyle: .title3)
		return label
	}()
	
	var backButtonVisibilitySwitch: UISwitch = {
		let switchControl = UISwitch()
		switchControl.isOn = true
		return switchControl
	}()
	
	var titleVisibilityLabel: UILabel = {
		let label = UILabel()
		label.text = "Title visible:"
		label.font = UIFont.preferredFont(forTextStyle: .title3)
		return label
	}()
	
	var titleVisibilitySwitch: UISwitch = {
		let switchControl = UISwitch()
		switchControl.isOn = true
		return switchControl
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		navigationItem.leftItemsSupplementBackButton = true
		
		startMonitoringActions()
		updateView()
	}
	
	// MARK: - Functions
	
	func startMonitoringActions() {
		itemTypeSegmentedControl.addTarget(
			self,
			action: #selector(anyControlValueChanged),
			for: .valueChanged
		)
		
		leftItemsStepper.addTarget(
			self,
			action: #selector(anyControlValueChanged),
			for: .valueChanged
		)
		
		rightItemsStepper.addTarget(
			self,
			action: #selector(anyControlValueChanged),
			for: .valueChanged
		)
		
		backButtonVisibilitySwitch.addTarget(
			self,
			action: #selector(anyControlValueChanged),
			for: .valueChanged
		)
		
		titleVisibilitySwitch.addTarget(
			self,
			action: #selector(anyControlValueChanged),
			for: .valueChanged
		)
	}
	
	override func addSubviews() {
		super.addSubviews()
		
		stackView.addArrangedSubview(itemTypeLabel)
		stackView.addArrangedSubview(itemTypeSegmentedControl)
		stackView.addArrangedSubview(createMarginView())
		
		stackView.addArrangedSubview(leftItemsLabel)
		stackView.addArrangedSubview(leftItemsStepper)
		stackView.addArrangedSubview(createMarginView())
		
		stackView.addArrangedSubview(rightItemsLabel)
		stackView.addArrangedSubview(rightItemsStepper)
		stackView.addArrangedSubview(createMarginView())
		
		stackView.addArrangedSubview(backButtonVisibilityLabel)
		stackView.addArrangedSubview(backButtonVisibilitySwitch)
		stackView.addArrangedSubview(createMarginView())
		
		stackView.addArrangedSubview(titleVisibilityLabel)
		stackView.addArrangedSubview(titleVisibilitySwitch)
	}
	
	func updateView() {
		title = titleVisibilitySwitch.isOn ? "Buttons" : nil
		
		navigationItem.hidesBackButton = !backButtonVisibilitySwitch.isOn
		
		let leftItemsCount = Int(leftItemsStepper.value)
		let leftItemsRange = 0..<leftItemsCount
		leftItemsLabel.text = "Left items: \(leftItemsCount)"
		navigationItem.leftBarButtonItems = leftItemsRange.map { _ in
			return createLeftItem()
		}
		
		let rightItemsCount = Int(rightItemsStepper.value)
		let rightItemsRange = 0..<rightItemsCount
		rightItemsLabel.text = "Right items: \(rightItemsCount)"
		navigationItem.rightBarButtonItems = rightItemsRange.map { _ in
			return createRightItem()
		}
	}
	
	func createLeftItem() -> UIBarButtonItem {
		if itemTypeSegmentedControl.selectedSegmentIndex == 0 {
			return UIBarButtonItem(
				image: UIImage(systemName: "square.and.arrow.up"),
				style: .plain,
				target: nil,
				action: nil
			)
		} else {
			return UIBarButtonItem(
				barButtonSystemItem: .cancel,
				target: nil,
				action: nil
			)
		}
	}
	
	func createRightItem() -> UIBarButtonItem {
		if itemTypeSegmentedControl.selectedSegmentIndex == 0 {
			return UIBarButtonItem(
				image: UIImage(systemName: "magnifyingglass"),
				style: .plain,
				target: nil,
				action: nil
			)
		} else {
			return UIBarButtonItem(
				barButtonSystemItem: .edit,
				target: nil,
				action: nil
			)
		}
	}
	
	func createMarginView() -> UIView {
		let view = UIView()
		view.heightAnchor.constraint(equalToConstant: 8.0).isActive = true
		return view
	}
	
	// MARK: - Actions
	
	@objc func anyControlValueChanged() {
		updateView()
	}
}
