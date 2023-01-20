//
//  TwoLabelsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/04/2022.
//

import UIKit

class TwoLabelsViewController: UIViewController {
    
    // MARK: - Properties
    
    let withCloseButton: Bool
    let backgroundColor: UIColor
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textColor = .systemGray
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Init
    
    init(title: String,
         subtitle: String,
         withCloseButton: Bool = false,
         backgroundColor: UIColor = .systemBackground) {
        self.withCloseButton = withCloseButton
        self.backgroundColor = backgroundColor
        
        super.init(nibName: nil, bundle: nil)
        
        titleLabel.text = title
        subtitleLabel.text = subtitle
    }
    
    required init?(coder: NSCoder) {
        withCloseButton = false
        backgroundColor = .systemBackground
        
        super.init(coder: coder)
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = backgroundColor
        setupLabels()
        setupCloseButton()
    }
    
    func setupLabels() {
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0).isActive = true
        subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
        subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
    }
    
    open func setupCloseButton() {
        guard withCloseButton else {
            return
        }
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Close",
            style: .done,
            target: self,
            action: #selector(close)
        )
    }
    
    // MARK: - Actions
    
    @objc func close() {
        dismiss(animated: true)
    }
}
