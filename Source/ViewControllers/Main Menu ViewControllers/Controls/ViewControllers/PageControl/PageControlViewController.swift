//
//  PageControlViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class PageControlViewController: BaseViewController {
	
	// MARK: - Properties
	
	var threePagesLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .callout)
		label.text = "3 Pages"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()

	var threePagesPageControl: UIPageControl = {
		let pageControl = UIPageControl()
		pageControl.numberOfPages = 3
		pageControl.currentPage = 0
		pageControl.pageIndicatorTintColor = .systemGray3
		pageControl.currentPageIndicatorTintColor = .systemGray
		pageControl.translatesAutoresizingMaskIntoConstraints = false
		return pageControl
	}()
	
	var manyPagesLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .callout)
		label.text = "100 Pages"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()

	var manyPagesPageControl: UIPageControl = {
		let pageControl = UIPageControl()
		pageControl.numberOfPages = 100
		pageControl.currentPage = 0
		pageControl.pageIndicatorTintColor = .systemGray3
		pageControl.currentPageIndicatorTintColor = .systemGray
		pageControl.translatesAutoresizingMaskIntoConstraints = false
		return pageControl
	}()
	
	var prominentLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .callout)
		label.text = "100 Pages"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()

	var prominentPageControl: UIPageControl = {
		let pageControl = UIPageControl()
		pageControl.numberOfPages = 100
		pageControl.currentPage = 0
		pageControl.backgroundStyle = .prominent
		pageControl.translatesAutoresizingMaskIntoConstraints = false
		return pageControl
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
		startObservingPageControlValueChange()
	}
	
	func addSubviews() {
		view.addSubview(threePagesLabel)
		view.addSubview(threePagesPageControl)
		view.addSubview(manyPagesLabel)
		view.addSubview(manyPagesPageControl)
		view.addSubview(prominentLabel)
		view.addSubview(prominentPageControl)
	}
	
	func createConstraints() {
		threePagesLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
		threePagesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		threePagesPageControl.topAnchor.constraint(equalTo: threePagesLabel.bottomAnchor, constant: 8.0).isActive = true
		threePagesPageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		manyPagesLabel.topAnchor.constraint(equalTo: threePagesPageControl.bottomAnchor, constant: 16.0).isActive = true
		manyPagesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		manyPagesPageControl.topAnchor.constraint(equalTo: manyPagesLabel.bottomAnchor, constant: 8.0).isActive = true
		manyPagesPageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		prominentLabel.topAnchor.constraint(equalTo: manyPagesPageControl.bottomAnchor, constant: 16.0).isActive = true
		prominentLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		prominentPageControl.topAnchor.constraint(equalTo: prominentLabel.bottomAnchor, constant: 8.0).isActive = true
		prominentPageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
	}
	
	// MARK: - PageControl value change
			
	func startObservingPageControlValueChange() {
		threePagesPageControl.addTarget(self, action: #selector(pageControlValueChanged(sender:)), for: .valueChanged)
		manyPagesPageControl.addTarget(self, action: #selector(pageControlValueChanged(sender:)), for: .valueChanged)
		prominentPageControl.addTarget(self, action: #selector(pageControlValueChanged(sender:)), for: .valueChanged)
	}
	
	@objc func pageControlValueChanged(sender: UIPageControl) {
		print("pageControlValueChanged: page=\(sender.currentPage)")
	}
}
