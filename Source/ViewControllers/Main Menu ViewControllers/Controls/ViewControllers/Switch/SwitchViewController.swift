//
//  SwitchViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class SwitchViewController: StackViewController {
	
	// MARK: - Properties
	
	var standardSwitchLabel: UILabel = {
		let label = UILabel()
		label.text = "Standard switch"
		label.font = UIFont.preferredFont(forTextStyle: .body)
		return label
	}()
	
	var standardSwitch: UISwitch = {
		let switchControl = UISwitch()
		switchControl.isOn = true
		return switchControl
	}()
	
	var disabledSwitchLabel: UILabel = {
		let label = UILabel()
		label.text = "Disabled"
		label.font = UIFont.preferredFont(forTextStyle: .body)
		return label
	}()
	
	var disabledSwitch: UISwitch = {
		let switchControl = UISwitch()
		switchControl.isOn = true
		switchControl.isEnabled = false
		return switchControl
	}()
	
	var customColorsSwitchLabel: UILabel = {
		let label = UILabel()
		label.text = "Custom colors"
		label.font = UIFont.preferredFont(forTextStyle: .body)
		return label
	}()
	
	var customColorsSwitch: UISwitch = {
		let switchControl = UISwitch()
		switchControl.isOn = true
		switchControl.onTintColor = .systemIndigo
		switchControl.thumbTintColor = .systemYellow
		return switchControl
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		stackView.alignment = .leading
		startObservingSwitchValueChange()
	}
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		stackView.addArrangedSubview(standardSwitchLabel)
		stackView.addArrangedSubview(standardSwitch)
		stackView.addArrangedSubview(disabledSwitchLabel)
		stackView.addArrangedSubview(disabledSwitch)
		stackView.addArrangedSubview(customColorsSwitchLabel)
		stackView.addArrangedSubview(customColorsSwitch)
	}
	
	// MARK: - Functions
	
	func startObservingSwitchValueChange() {
		standardSwitch.addTarget(
			self,
			action: #selector(switchValueChanged(sender:)),
			for: .valueChanged
		)
	}
	
	@objc func switchValueChanged(sender: UISwitch) {
		print("switchValueChanged. newValue=\(sender.isOn)")
	}
}
