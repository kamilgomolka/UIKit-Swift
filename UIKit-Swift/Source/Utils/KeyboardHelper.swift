//
//  KeyboardHelper.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 09/04/2022.
//

import UIKit

class KeyboardHelper: NSObject {
	
	// MARK: - Properties
	
	private weak var viewController: UIViewController?
	private weak var scrollView: UIScrollView?
	
	// MARK: - Init
	
	init(viewController: UIViewController, scrollView: UIScrollView) {
		self.viewController = viewController
		self.scrollView = scrollView
	}
	
	// MARK: - Public functions
	
	func loadView() {
		addKeyboardHideGesture()
	}
	
	func viewWillAppear(_ animated: Bool) {
		addObservers()
	}
	
	func viewWillDisappear(_ animated: Bool) {
		removeObservers()
	}
	
	// MARK: - Private functions
	
	private func addObservers() {
		NotificationCenter.default.addObserver(self,
											   selector: #selector(keyboardDidShow(notification:)),
											   name: UIResponder.keyboardDidShowNotification,
											   object: nil)
		
		NotificationCenter.default.addObserver(self,
											   selector: #selector(keyboardWillHide(notification:)),
											   name: UIResponder.keyboardWillHideNotification,
											   object: nil)
		
		NotificationCenter.default.addObserver(self,
											   selector: #selector(keyboardWillChangeFrame(notification:)),
											   name: UIResponder.keyboardWillChangeFrameNotification,
											   object: nil)
	}
	
	private func removeObservers() {
		NotificationCenter.default.removeObserver(self)
	}
	
	@objc private func keyboardDidShow(notification: NSNotification) {
		adjustScrollview(keyboardVisible: true, notification: notification)
	}
	
	@objc private func keyboardWillHide(notification: NSNotification) {
		adjustScrollview(keyboardVisible: false, notification: notification)
	}
	
	@objc private func keyboardWillChangeFrame(notification: NSNotification) {
		adjustScrollview(keyboardVisible: true, notification: notification)
	}
	
	private func adjustScrollview(keyboardVisible: Bool, notification: NSNotification) {
		guard let viewController = viewController, let scrollView = scrollView else {
			return
		}
		
		let botttomInset = keyboardVisible
		? keyboardHeight(notification: notification) - viewController.view.safeAreaInsets.bottom
		: 0.0
		
		let inset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: botttomInset, right: 0.0)
		scrollView.contentInset = inset
		scrollView.scrollIndicatorInsets = inset
	}
	
	private func keyboardHeight(notification: NSNotification) -> CGFloat {
		guard let dict = notification.userInfo,
			  let keyboardFrame = dict[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {
			return 0.0
		}
		
		return keyboardFrame.cgRectValue.height
	}
	
	private func addKeyboardHideGesture() {
		let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
		tapGesture.cancelsTouchesInView = false
		tapGesture.delegate = self
		viewController?.view.addGestureRecognizer(tapGesture)
	}
	
	@objc private func hideKeyboard() {
		UIApplication.shared.sendAction(#selector(UIControl.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}

extension KeyboardHelper: UIGestureRecognizerDelegate {
	
	func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
		if let view = touch.view, view is UIControl {
			return false
		} else {
			return true
		}
	}
}
