//
//  ProgressViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class ProgressViewController: BaseViewController {
	
	// MARK: - Properties
	
	var label1: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .callout)
		label.text = "UIProgressViewStyleDefault"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	var progressView1: UIProgressView = {
		let progressView = UIProgressView(progressViewStyle: .default)
		progressView.progress = 0.5
		progressView.translatesAutoresizingMaskIntoConstraints = false
		return progressView
	}()
	
	var label2: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .callout)
		label.text = "UIProgressViewStyleBar\n(for use in a toolbar)"
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	var progressView2: UIProgressView = {
		let progressView = UIProgressView(progressViewStyle: .bar)
		progressView.progress = 0.5
		progressView.translatesAutoresizingMaskIntoConstraints = false
		return progressView
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = UIColor.systemBackground
		addSubviews()
		createConstraints()
	}
	
	// MARK: - Initialization
	
	func addSubviews() {
		view.addSubview(label1)
		view.addSubview(progressView1)
		view.addSubview(label2)
		view.addSubview(progressView2)
	}
	
	func createConstraints() {
		view.layoutMargins = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
		
		label1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
		label1.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
		
		progressView1.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 8.0).isActive = true
		progressView1.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
		progressView1.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
		
		label2.topAnchor.constraint(equalTo: progressView1.bottomAnchor, constant: 24.0).isActive = true
		label2.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
		
		progressView2.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 8.0).isActive = true
		progressView2.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
		progressView2.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
	}
}
