//
//  AllControlsButtonView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsButtonView: AllControlsBaseView {
    
    // MARK: - Properties
    
    var plainButton: UIButton = {
        let config = UIButton.Configuration.plain()
        let button = UIButton(configuration: config, primaryAction: nil)
        button.setTitle("Plain", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var grayButton: UIButton = {
        let config = UIButton.Configuration.gray()
        let button = UIButton(configuration: config, primaryAction: nil)
        button.setTitle("Gray", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var tintedButton: UIButton = {
        let config = UIButton.Configuration.tinted()
        let button = UIButton(configuration: config, primaryAction: nil)
        button.setTitle("Tinted", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var filledButton: UIButton = {
        let config = UIButton.Configuration.filled()
        let button = UIButton(configuration: config, primaryAction: nil)
        button.setTitle("Filled", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var allButtons: [UIButton] {
        return [plainButton, grayButton, tintedButton, filledButton]
    }
    
    let clicksCounter = ButtonClicksCounter()
    
    // MARK: - Initialization
    
    override func initialize() {
        super.initialize()
        
        titleLabel.text = "Button"
        clicksCounter.setup(buttons: allButtons)
    }
    
    override func addSubviews() {
        super.addSubviews()
        
        for button in allButtons {
            addSubview(button)
        }
    }
    
    override func createConstraints() {
        super.createConstraints()
        
        plainButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0).isActive = true
        plainButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0).isActive = true
        
        grayButton.topAnchor.constraint(equalTo: plainButton.topAnchor).isActive = true
        grayButton.leadingAnchor.constraint(equalTo: plainButton.trailingAnchor, constant: 8.0).isActive = true
        grayButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0).isActive = true
        grayButton.widthAnchor.constraint(equalTo: plainButton.widthAnchor).isActive = true
        
        tintedButton.topAnchor.constraint(equalTo: plainButton.bottomAnchor, constant: 8.0).isActive = true
        tintedButton.leadingAnchor.constraint(equalTo: plainButton.leadingAnchor).isActive = true
        tintedButton.widthAnchor.constraint(equalTo: plainButton.widthAnchor).isActive = true
        tintedButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8.0).isActive = true
        
        filledButton.topAnchor.constraint(equalTo: tintedButton.topAnchor).isActive = true
        filledButton.leadingAnchor.constraint(equalTo: grayButton.leadingAnchor).isActive = true
        filledButton.trailingAnchor.constraint(equalTo: grayButton.trailingAnchor).isActive = true
        filledButton.widthAnchor.constraint(equalTo: plainButton.widthAnchor).isActive = true
        filledButton.bottomAnchor.constraint(equalTo: tintedButton.bottomAnchor).isActive = true
    }
}
