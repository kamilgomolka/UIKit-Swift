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
            titles[button] = button.titleLabel?.text ?? ""
        }
    }
    
    private func bindClickEvents() {
        for button in buttons {
            button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        }
    }
    
    @objc private func buttonClicked(sender: UIButton) {
        clicks[sender] = (clicks[sender] ?? 0) + 1
        let clicks = clicks[sender] ?? 0
        let title = titles[sender] ?? ""
        let newTitle = String(format: "%@ (%ld)", title, clicks)
        sender.setTitle(newTitle, for: .normal)
    }
}
