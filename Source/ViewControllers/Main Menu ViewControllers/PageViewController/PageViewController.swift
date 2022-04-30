//
//  PageViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 30/04/2022.
//

import UIKit

class PageViewController: UIViewController {
	
	// MARK: - Properties
	
	var segmentedControl: UISegmentedControl = {
		let segmentedControl = UISegmentedControl(items: [
			"Page 1",
			"Page 2",
			"Page 3",
		])
		segmentedControl.selectedSegmentIndex = 0
		return segmentedControl
	}()
	
	var pageViewController: UIPageViewController = {
		let pageViewController = UIPageViewController(
			transitionStyle: .scroll,
			navigationOrientation: .horizontal,
			options: nil
		)
		return pageViewController
	}()
	
	var viewControllers: [UIViewController] = []
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = .systemBackground
		
		setupNavigationBar()
		createViewControllers()
		setupPageViewController()
		startObservingSegmentedControlValueChange()
	}
	
	// MARK: - Functions
	
	func setupNavigationBar() {
		navigationItem.titleView = segmentedControl
		
		let closeButton = UIBarButtonItem(systemItem: .close)
		closeButton.primaryAction = UIAction(handler: { [weak self] _ in
			self?.navigationController?.dismiss(animated: true)
		})
		navigationItem.rightBarButtonItem = closeButton
	}
	
	func createViewControllers() {
		viewControllers = [
			SingleLabelViewController(labelText: "Page 1"),
			SingleLabelViewController(labelText: "Page 2", backgroundColor: .systemGray3),
			SingleLabelViewController(labelText: "Page 3", backgroundColor: .systemCyan)
		]
	}
	
	func setupPageViewController() {
		pageViewController.willMove(toParent: self)
		view.addSubview(pageViewController.view)
		addChild(pageViewController)
		pageViewController.didMove(toParent: self)
		pageViewController.view.frame = view.frame
		pageViewController.dataSource = self
		pageViewController.delegate = self
		
		if let firstViewController = viewControllers.first {
			pageViewController.setViewControllers(
				[firstViewController],
				direction: .forward,
				animated: false
			)
		}
	}
	
	func updateSegmentedControlSelectedIndex() {
		if let viewController = pageViewController.viewControllers?.first,
		   let index = viewControllers.firstIndex(of: viewController) {
			segmentedControl.selectedSegmentIndex = index
		}
	}
	
	func startObservingSegmentedControlValueChange() {
		segmentedControl.addTarget(
			self,
			action: #selector(segmentedControlValueChanged),
			for: .valueChanged
		)
	}
	
	@objc func segmentedControlValueChanged() {
		guard let currentViewController = pageViewController.viewControllers?.first,
			  let currentIndex = viewControllers.firstIndex(of: currentViewController) else {
			return
		}
		
		let newIndex = segmentedControl.selectedSegmentIndex
		let newViewController = viewControllers[newIndex]
		let isForward = newIndex > currentIndex
		
		pageViewController.setViewControllers(
			[newViewController],
			direction: isForward ? .forward : .reverse,
			animated: true
		)
	}
}

extension PageViewController: UIPageViewControllerDataSource {
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
		guard let index = viewControllers.firstIndex(of: viewController) else {
			return nil
		}
		
		let newIndex = index - 1
		if newIndex >= 0 {
			return viewControllers[newIndex]
		} else {
			return nil
		}
	}
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
		guard let index = viewControllers.firstIndex(of: viewController) else {
			return nil
		}
		
		let newIndex = index + 1
		if newIndex <= viewControllers.count - 1 {
			return viewControllers[newIndex]
		} else {
			return nil
		}
	}
}

extension PageViewController: UIPageViewControllerDelegate {
	
	func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
		if completed {
			updateSegmentedControlSelectedIndex()
		}
	}
}
