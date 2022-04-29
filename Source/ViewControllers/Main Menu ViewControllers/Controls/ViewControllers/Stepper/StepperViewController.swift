//
//  StepperViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class StepperViewController: BaseViewController {
	
	// MARK: - Properties
	
	var titleLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .callout)
		label.text = "Selected value:"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	var valueLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .title1)
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	var stepper: UIStepper = {
		let stepper = UIStepper()
		stepper.minimumValue = 0.0
		stepper.maximumValue = 100.0
		stepper.value = 0.0
		stepper.translatesAutoresizingMaskIntoConstraints = false
		return stepper
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		initialize()
		addSubviews()
		createConstraints()
	}
	
	// MARK: - Initialization
	
	func initialize() {
		view.backgroundColor = UIColor.systemBackground
		startObservingStepperValueChange()
		updateValueLabel()
	}
	
	func addSubviews() {
		view.addSubview(titleLabel)
		view.addSubview(valueLabel)
		view.addSubview(stepper)
	}
	
	func createConstraints() {
		titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0).isActive = true
		titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		valueLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4.0).isActive = true
		valueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		stepper.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 16.0).isActive = true
		stepper.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
	}
	
	// MARK: - Stepper value change
			
	func startObservingStepperValueChange() {
		stepper.addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
	}
	
	@objc func stepperValueChanged() {
		updateValueLabel()
	}
	
	func updateValueLabel() {
		valueLabel.text = String(Int(stepper.value))
	}
}
