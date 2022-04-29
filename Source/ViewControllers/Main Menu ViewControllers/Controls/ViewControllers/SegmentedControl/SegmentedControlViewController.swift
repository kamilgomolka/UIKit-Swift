//
//  SegmentedControlViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class SegmentedControlViewController: StackViewController {
	
	// MARK: - Properties
	
	var standardLabel: UILabel = {
		let label = UILabel()
		label.text = "Default properties\n(Size Mode = Equal Widths)"
		label.numberOfLines = 0
		label.font = UIFont.preferredFont(forTextStyle: .body)
		return label
	}()
	
	var standardSegmentedControl: UISegmentedControl = {
		let items = ["First",
					 "Second",
					 "Third"]
		
		let segmentedControl = UISegmentedControl(items: items)
		segmentedControl.selectedSegmentIndex = 0
		return segmentedControl
	}()
	
	var proportionalLabel: UILabel = {
		let label = UILabel()
		label.text = "apportionsSegmentWidthsByContent = true"
		label.font = UIFont.preferredFont(forTextStyle: .body)
		return label
	}()
	
	var proportionalSegmentedControl: UISegmentedControl = {
		let items = ["First",
					 "Second",
					 "Third"]
		
		let segmentedControl = UISegmentedControl(items: items)
		segmentedControl.selectedSegmentIndex = 0
		segmentedControl.apportionsSegmentWidthsByContent = true
		return segmentedControl
	}()
	
	var momentaryLabel: UILabel = {
		let label = UILabel()
		label.text = "isMomentary = true"
		label.font = UIFont.preferredFont(forTextStyle: .body)
		return label
	}()
	
	var momentarySegmentedControl: UISegmentedControl = {
		let items = ["First",
					 "Second",
					 "Third"]
		
		let segmentedControl = UISegmentedControl(items: items)
		segmentedControl.isMomentary = true
		return segmentedControl
	}()
	
	var imagesLabel: UILabel = {
		let label = UILabel()
		label.text = "Images"
		label.font = UIFont.preferredFont(forTextStyle: .body)
		return label
	}()
	
	var imagesSegmentedControl: UISegmentedControl = {
		let items = [
			UIImage(systemName: "calendar"),
			UIImage(systemName: "snowflake.circle"),
			UIImage(systemName: "suit.heart.fill"),
			UIImage(systemName: "icloud.and.arrow.up")
		].compactMap { $0 }
		
		let segmentedControl = UISegmentedControl(items: items)
		segmentedControl.selectedSegmentIndex = 0
		return segmentedControl
	}()
	
	var customColorsLabel: UILabel = {
		let label = UILabel()
		label.text = "Custom colors"
		label.font = UIFont.preferredFont(forTextStyle: .body)
		return label
	}()
	
	var customColorsSegmentedControl: UISegmentedControl = {
		let items = ["First",
					 "Second",
					 "Third"]
		
		let segmentedControl = UISegmentedControl(items: items)
		segmentedControl.selectedSegmentIndex = 0
		segmentedControl.backgroundColor = .systemBlue
		segmentedControl.selectedSegmentTintColor = .systemYellow
		segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
		segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.darkGray], for: .selected)
		return segmentedControl
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		stackView.alignment = .leading
		stackView.spacing = 16.0
		startObservingSegmentedControlValueChange()
	}
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
				
		stackView.addArrangedSubview(standardLabel)
		stackView.addArrangedSubview(standardSegmentedControl)
		stackView.addArrangedSubview(proportionalLabel)
		stackView.addArrangedSubview(proportionalSegmentedControl)
		stackView.addArrangedSubview(momentaryLabel)
		stackView.addArrangedSubview(momentarySegmentedControl)
		stackView.addArrangedSubview(imagesLabel)
		stackView.addArrangedSubview(imagesSegmentedControl)
		stackView.addArrangedSubview(customColorsLabel)
		stackView.addArrangedSubview(customColorsSegmentedControl)
	}
	
	// MARK: - Functions
	
	func startObservingSegmentedControlValueChange() {
		standardSegmentedControl.addTarget(
			self,
			action: #selector(segmentedControlValueChanged(sender:)),
			for: .valueChanged
		)
	}
	
	@objc func segmentedControlValueChanged(sender: UISegmentedControl) {
		print("segmentedControlValueChanged. selectedSegmentIndex=\(sender.selectedSegmentIndex)")
	}
}
