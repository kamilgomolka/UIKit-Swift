//
//  ButtonClicksCounter.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class ButtonClicksCounter {
    
    // MARK: - Properties
    
    private var buttons: [UIButton] = []
    private var titles: [UIButton: String] = [:]
    private var clicks: [UIButton: Int] = [:]
    
    // MARK: - Setup
    
    func setup(buttons: [UIButton]) {
        self.buttons = buttons
        titles.removeAll()
        clicks.removeAll()
        loadTitles()
        bindClickEvents()
    }
    
    // MARK: - Private functions
    
    private func loadTitles() {
        for button in buttons {
            titles[button] = button.configuration?.title ?? ""
        }
    }
    
    private func bindClickEvents() {
        for button in buttons {
            button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
            
            button.configurationUpdateHandler = { [unowned self] button in
                button.configuration?.title = self.currentTitle(button: button)
            }
        }
    }
    
    @objc private func buttonClicked(sender: UIButton) {
        increaseClicksCount(button: sender)
        sender.setNeedsUpdateConfiguration()
    }
    
    private func increaseClicksCount(button: UIButton) {
        clicks[button] = (clicks[button] ?? 0) + 1
    }
    
    private func currentTitle(button: UIButton) -> String {
        let title = titles[button] ?? ""
        
        guard let clicks = clicks[button] else {
            return title
        }        
        
        let newTitle = String(format: "%@ (%ld)", title, clicks)
        return newTitle
    }
}
