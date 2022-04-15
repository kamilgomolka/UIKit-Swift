//
//  PageSheetWithDelegateTransitionViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

class PageSheetWithDelegateTransitionViewController: UIViewController {
	
	// MARK: - Properties
	
	var titleLabel: UILabel = {
		let label = UILabel()
		label.text = "Page sheet + Action on close"
		label.font = UIFont.preferredFont(forTextStyle: .title1)
		label.textAlignment = .center
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	var subtitleLabel: UILabel = {
		let label = UILabel()
		label.text = "(Try to swipe down)"
		label.font = UIFont.preferredFont(forTextStyle: .body)
		label.textColor = .systemGray
		label.textAlignment = .center
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = UIColor.systemBackground
		isModalInPresentation = true
		navigationController?.presentationController?.delegate = self
		
		setupLabel()
		setupCloseButton()
	}
	
	func setupLabel() {
		view.addSubview(titleLabel)
		view.addSubview(subtitleLabel)
		
		titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
		titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
		titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		
		subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0).isActive = true
		subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
		subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
	}
	
	func setupCloseButton() {
		let closeButton = UIBarButtonItem(title: "Save",
										  style: .done,
										  target: self,
										  action: #selector(saveAndClose))
		
		navigationItem.rightBarButtonItem = closeButton
	}
	
	// MARK: - Actions
	
	@objc func saveAndClose() {
		
		//
		// Save changes here
		//
		
		dismiss(animated: true, completion: nil)
	}
}

// MARK: - UIAdaptivePresentationControllerDelegate

extension PageSheetWithDelegateTransitionViewController: UIAdaptivePresentationControllerDelegate {
	
	func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController) {
		let alert = UIAlertController(title: "You made some changes.",
									  message: nil,
									  preferredStyle: .actionSheet)
		
		alert.addAction(UIAlertAction(
			title: "Save",
			style: .default,
			handler: { [weak self] _ in
				self?.saveAndClose()
			}))
		
		alert.addAction(UIAlertAction(
			title: "Discard changes",
			style: .destructive,
			handler: { [weak self] _ in
				self?.dismiss(animated: true, completion: nil)
			}))
		
		alert.addAction(UIAlertAction(
			title: "Cancel",
			style: .cancel,
			handler: nil))
		
		present(alert, animated: true, completion: nil)
	}
}
