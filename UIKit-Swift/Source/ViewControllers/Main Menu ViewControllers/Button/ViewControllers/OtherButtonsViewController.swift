//
//  OtherButtonsViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class OtherButtonsViewController: UIViewController {
    
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
    
    var buttonDetailDisclosure: UIButton = {
        let button = UIButton(type: .detailDisclosure)
        button.configuration = UIButton.Configuration.gray()
        button.configuration?.title = "type = .detailDisclosure"
        return button
    }()
    
    var buttonContactAdd: UIButton = {
        let button = UIButton(type: .contactAdd)
        button.configuration = UIButton.Configuration.gray()
        button.configuration?.title = "type = .contactAdd"
        return button
    }()

    var buttonClose: UIButton = {
        let button = UIButton(type: .close)
        button.configuration = UIButton.Configuration.gray()
        button.configuration?.title = "type = .close"
        return button
    }()

    var buttonPrimary: UIButton = {
        var config = UIButton.Configuration.gray()
        config.title = "role = .primary"
        
        let button = UIButton(configuration: config)
        button.role = .primary
        return button
    }()

    var buttonActivityIndicator: UIButton = {
        var config = UIButton.Configuration.gray()
        config.title = "showsActivityIndicator = true"
        config.showsActivityIndicator = true
        return UIButton(configuration: config)
    }()
    
    var buttonSubtitle: UIButton = {
        var config = UIButton.Configuration.filled()
        config.subtitle = "Just subtitle"
        return UIButton(configuration: config)
    }()
    
    var buttonTitleAndSubtitle: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Title"
        config.subtitle = "Subtitle"
        return UIButton(configuration: config)
    }()
    
    var buttonImage: UIButton = {
        var config = UIButton.Configuration.filled()
        config.image = UIImage(systemName: "square.and.arrow.up")
        return UIButton(configuration: config)
    }()
    
    var buttonImageAndText: UIButton = {
        var config = UIButton.Configuration.filled()
        config.image = UIImage(systemName: "square.and.arrow.up")
        config.title = "Image and text"
        return UIButton(configuration: config)
    }()
    
    var buttonImageAndTextAndSubtitle: UIButton = {
        var config = UIButton.Configuration.filled()
        config.image = UIImage(systemName: "square.and.arrow.up")
        config.title = "Title"
        config.subtitle = "Subtitle"
        return UIButton(configuration: config)
    }()
    
    var buttonDisabled: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Disabled"
        let button = UIButton(configuration: config)
        button.isEnabled = false
        return button
    }()
    
    let clicksCounter = ButtonClicksCounter()
    
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
        
        let buttons = [
            buttonDetailDisclosure,
            buttonContactAdd,
            buttonClose,
            buttonPrimary,
            buttonActivityIndicator,
            buttonSubtitle,
            buttonTitleAndSubtitle,
            buttonImage,
            buttonImageAndText,
            buttonImageAndTextAndSubtitle,
            buttonDisabled
        ]
        
        clicksCounter.setup(buttons: buttons)
        
        for button in buttons {
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
