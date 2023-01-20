//
//  PageSheetWithDelegateTransitionViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

class PageSheetWithDelegateTransitionViewController: TwoLabelsViewController {
    
    // MARK: - Init
    
    init() {
        super.init(
            title: "Page sheet + Action on close",
            subtitle: "(Try to swipe down)"
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        
        isModalInPresentation = true
        navigationController?.presentationController?.delegate = self
    }
    
    override func setupCloseButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Save",
            style: .done,
            target: self,
            action: #selector(saveAndClose)
        )
    }
    
    // MARK: - Actions
    
    @objc func saveAndClose() {
        
        //
        // Save changes here
        //
        
        dismiss(animated: true)
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
                self?.dismiss(animated: true)
            }))
        
        alert.addAction(UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: nil))
        
        present(alert, animated: true)
    }
}
