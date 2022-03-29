//
//  ButtonToggleViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class ButtonToggleViewController: UIViewController {
    
    // MARK: - Properties
    
    var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    }()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.spacing = UIStackView.spacingUseSystem
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var plainButton: UIButton = {
        let config = UIButton.Configuration.plain()
        let button = UIButton(configuration: config, primaryAction: nil)
        button.setTitle("Toggle button, Plain", for: .normal)
        button.changesSelectionAsPrimaryAction = true
        return button
    }()
    
    var grayButton: UIButton = {
        let config = UIButton.Configuration.gray()
        let button = UIButton(configuration: config, primaryAction: nil)
        button.setTitle("Toggle button, Gray", for: .normal)
        button.changesSelectionAsPrimaryAction = true
        return button
    }()
    
    var tintedButton: UIButton = {
        let config = UIButton.Configuration.tinted()
        let button = UIButton(configuration: config, primaryAction: nil)
        button.setTitle("Toggle button, Tinted", for: .normal)
        button.changesSelectionAsPrimaryAction = true
        return button
    }()
    
    var filledButton: UIButton = {
        let config = UIButton.Configuration.filled()
        let button = UIButton(configuration: config, primaryAction: nil)
        button.setTitle("Toggle button, Filled", for: .normal)
        button.changesSelectionAsPrimaryAction = true
        return button
    }()
    
    var allButtons: [UIButton] {
        return [plainButton, grayButton, tintedButton, filledButton]
    }
    
    // MARK: - Livecycle
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .systemBackground
        
        addSubviews()
        createConstraints()
    }
    
    // MARK: - Initialization
    
    func addSubviews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        
        for button in allButtons {
            stackView.addArrangedSubview(button)
        }
    }
    
    func createConstraints() {
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16.0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16.0).isActive = true
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16.0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16.0).isActive = true
    }
}
