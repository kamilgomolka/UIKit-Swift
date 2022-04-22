//
//  StackViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 09/04/2022.
//

import UIKit

class StackViewController: BaseViewController {
	
	// MARK: - Properties
	
	override var scrollViewToAdjst: UIScrollView? {
		return scrollView
	}
	
	var scrollView: UIScrollView = {
		let scrollView = UIScrollView()
		scrollView.keyboardDismissMode = .interactive
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		return scrollView
	}()
	
	var contentView: UIView = {
		let contentView = UIView()
		contentView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16.0, leading: 16.0, bottom: 16.0, trailing: 16.0)
		contentView.translatesAutoresizingMaskIntoConstraints = false
		return contentView
	}()
	
	var stackView: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .vertical
		stackView.alignment = .fill
		stackView.distribution = .fill
		stackView.spacing = UIStackView.spacingUseSystem
		stackView.translatesAutoresizingMaskIntoConstraints = false
		return stackView
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
		contentView.addSubview(stackView)
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
		
		stackView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor).isActive = true
		stackView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor).isActive = true
		stackView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor).isActive = true
		stackView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor).isActive = true
	}
}
