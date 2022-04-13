//
//  ScrollViewVerticalViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import UIKit

class ScrollViewVerticalViewController: UIViewController {
	
	// MARK: - Properties
	
	var scrollView: UIScrollView = {
		let scrollView = UIScrollView()
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		return scrollView
	}()
	
	var contentView: UIView = {
		let contentView = UIView()
		contentView.translatesAutoresizingMaskIntoConstraints = false
		return contentView
	}()
	
	var label: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .title2)
		label.numberOfLines = 0
		label.text = MockDataLoader.shared.sequentialNumbersMultilineText()
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = .systemBackground		
		addSubviews()
		createConstraints()
	}
	
	// MARK: - Initialization
	
	func addSubviews() {
		view.addSubview(scrollView)
		scrollView.addSubview(contentView)
		contentView.addSubview(label)
	}
	
	func createConstraints() {
		scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		
		contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
		contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
		
		label.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor).isActive = true
		label.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor).isActive = true
		label.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor).isActive = true
		label.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor).isActive = true
	}
}
