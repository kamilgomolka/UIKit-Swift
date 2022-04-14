//
//  ScrollViewTwoDirectionsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class ScrollViewTwoDirectionsViewController: UIViewController {
	
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
		createGrid()
	}
	
	func createGrid() {
		for rowIndex in 0...8 {
			let rowStackView = createStackView(rowIndex: rowIndex)
			stackView.addArrangedSubview(rowStackView)
		}
	}
	
	func createStackView(rowIndex: Int) -> UIStackView {
		let stackView = UIStackView()
		stackView.axis = .horizontal
		stackView.alignment = .top
		stackView.distribution = .fill
		stackView.spacing = UIStackView.spacingUseSystem
		
		for columnIndex in 0...6 {
			let square = createSquare(rowIndex: rowIndex, columnIndex: columnIndex)
			stackView.addArrangedSubview(square)
		}
		
		return stackView
	}
	
	func createSquare(rowIndex: Int, columnIndex: Int) -> UIView {
		let square = UIView()
		
		if rowIndex % 2 == 0 {
			square.backgroundColor = ( columnIndex % 2 == 0 ) ? UIColor.systemYellow : UIColor.darkGray
		} else {
			square.backgroundColor = ( columnIndex % 2 == 0 ) ? UIColor.systemGreen : UIColor.systemIndigo
		}
		
		square.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
		square.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
		return square
	}
	
	func createConstraints() {
		scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		
		contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor).isActive = true
		contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor).isActive = true
		contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor).isActive = true
		contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor).isActive = true
		
		stackView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor).isActive = true
		stackView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor).isActive = true
		stackView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor).isActive = true
		stackView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor).isActive = true
	}
}
