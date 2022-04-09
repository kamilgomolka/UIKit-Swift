//
//  BaseViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/03/2022.
//

import UIKit

class BaseViewController: UIViewController {
    
    // MARK: - Properties
    
    var scrollViewToAdjst: UIScrollView? {
        return nil
    }
	
	var keyboardHelper: KeyboardHelper? = nil
    
    // MARK: - Lifecycle
    
	override func loadView() {
		super.loadView()
		
		createKeyboardHelperIfNeeded()
		keyboardHelper?.loadView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
		keyboardHelper?.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
		keyboardHelper?.viewWillAppear(animated)
    }
    
    // MARK: - Private functions
	
	private func createKeyboardHelperIfNeeded() {
		if let scrollViewToAdjst = scrollViewToAdjst {
			keyboardHelper = KeyboardHelper(viewController: self, scrollView: scrollViewToAdjst)
		}
	}
}
