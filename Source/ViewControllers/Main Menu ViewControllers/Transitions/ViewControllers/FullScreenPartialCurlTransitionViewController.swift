//
//  FullScreenPartialCurlTransitionViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

/// Notes - as for iOS 15.2:
///
/// -> "Partial curl" can be only applied
///     with full-screen presentation ViewControllers.
///
/// -> "Partial curl" can only be dismissed without animation.
///    Animated dismiss causes a visual bug.
///    (trantision stops in half and app is not responsive).
///
class FullScreenPartialCurlTransitionViewController: SingleLabelViewController {
	
	// MARK: - Init
	
	init() {
		super.init(labelText: "Modal, Full screen, Partial curl", withCloseButton: true)
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
	// MARK: - Actions
    
    @objc override func close() {
        dismiss(animated: false, completion: nil)
    }
}
