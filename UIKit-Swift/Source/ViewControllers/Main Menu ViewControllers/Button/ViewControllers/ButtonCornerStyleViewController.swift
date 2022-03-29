//
//  ButtonCornerStyleViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class ButtonCornerStyleViewController: UIViewController {
    
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
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = UIStackView.spacingUseSystem
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var buttons: [UIButton] = []
    let clicksCounter = ButtonClicksCounter()
    
    // MARK: - Livecycle
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .systemBackground
        
        addSubviews()
        createConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        clicksCounter.setup(buttons: buttons)
    }
    
    // MARK: - Initialization
    
    func addSubviews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        
        buttons = [
            newButton(title: "Fixed",
                      subtitle: "uses cornerRadius without modification",
                      cornerStyle: .fixed),
            
            newButton(title: "Dynamic",
                      subtitle: "adjust cornerRadius depending on size",
                      cornerStyle: .dynamic),
            
            newButton(title: "Small", cornerStyle: .small),
            newButton(title: "Medium", cornerStyle: .medium),
            newButton(title: "Large", cornerStyle: .large),
            newButton(title: "Capsule", cornerStyle: .capsule)
        ]
        
        for button in buttons {
            stackView.addArrangedSubview(button)
        }
    }
    
    func newButton(title: String, subtitle: String? = nil, cornerStyle: UIButton.Configuration.CornerStyle) -> UIButton {
        var config = UIButton.Configuration.filled()
        config.title = title
        config.subtitle = subtitle
        config.titleAlignment = .center        
        config.cornerStyle = cornerStyle
        
        let button = UIButton(configuration: config, primaryAction: nil)
//        button.setTitle(title, for: .normal)
//        //button.titleLabel?.text = title
//        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
//        //button.subtitleLabel?.text = subtitle
        
        // Toggle
        //button.changesSelectionAsPrimaryAction = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
