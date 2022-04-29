//
//  SliderViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class SliderViewController: BaseViewController {
	
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
	
	var slider: UISlider = {
		let slider = UISlider()
		slider.minimumValue = 0.0
		slider.maximumValue = 100.0
		slider.value = 50.0
		slider.translatesAutoresizingMaskIntoConstraints = false
		return slider
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
		startObservingSliderValueChange()
		updateValueLabel()
	}
	
	func addSubviews() {
		view.addSubview(titleLabel)
		view.addSubview(valueLabel)
		view.addSubview(slider)
	}
	
	func createConstraints() {
		titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0).isActive = true
		titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		valueLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4.0).isActive = true
		valueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		slider.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 16.0).isActive = true
		slider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.0).isActive = true
		slider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.0).isActive = true
		slider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
	}
	
	// MARK: - Slider value change
			
	func startObservingSliderValueChange() {
		slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
	}
	
	@objc func sliderValueChanged() {
		updateValueLabel()
	}
	
	func updateValueLabel() {
		valueLabel.text = String(Int(slider.value))
	}
}
