//
//  ActivityIndicatorViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class ActivityIndicatorViewController: StackViewController {
	
	// MARK: - Properties
	
	var mediumLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .callout)
		label.text = "Medium"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	var mediumActivityIndicator: UIActivityIndicatorView = {
		let activityIndicator = UIActivityIndicatorView(style: .medium)
		activityIndicator.startAnimating()
		activityIndicator.translatesAutoresizingMaskIntoConstraints = false
		return activityIndicator
	}()
	
	var largeLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .callout)
		label.text = "Large"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	var largeActivityIndicator: UIActivityIndicatorView = {
		let activityIndicator = UIActivityIndicatorView(style: .large)
		activityIndicator.startAnimating()
		activityIndicator.translatesAutoresizingMaskIntoConstraints = false
		return activityIndicator
	}()
	
	var customColorLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .callout)
		label.text = "Custom color"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	var customColorActivityIndicator: UIActivityIndicatorView = {
		let activityIndicator = UIActivityIndicatorView(style: .medium)
		activityIndicator.startAnimating()
		activityIndicator.translatesAutoresizingMaskIntoConstraints = false
		activityIndicator.color = UIColor.systemBlue
		return activityIndicator
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		stackView.alignment = .center
		stackView.spacing = 16.0
	}
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		stackView.addArrangedSubview(mediumLabel)
		stackView.addArrangedSubview(mediumActivityIndicator)
		stackView.addArrangedSubview(largeLabel)
		stackView.addArrangedSubview(largeActivityIndicator)
		stackView.addArrangedSubview(customColorLabel)
		stackView.addArrangedSubview(customColorActivityIndicator)
	}
}
