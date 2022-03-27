//
//  AllControlsActivityIndicatorView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsActivityIndicatorView: AllControlsBaseView {
    
    // MARK: - Properties
    
    var mediumLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.text = "Medium"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var mediumActivityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.startAnimating()
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        return activityIndicator
    }()
    
    var largeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.text = "Large"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var largeActivityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.startAnimating()
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        return activityIndicator
    }()
    
    // MARK: - Initialization
    
    override func initialize() {
        super.initialize()
        
        titleLabel.text = "Activity indicator"
    }
    
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(mediumLabel)
        addSubview(mediumActivityIndicator)
        addSubview(largeLabel)
        addSubview(largeActivityIndicator)        
    }
    
    override func createConstraints() {
        super.createConstraints()
        
        mediumLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0).isActive = true
        mediumLabel.centerYAnchor.constraint(equalTo: mediumActivityIndicator.centerYAnchor).isActive = true
        
        mediumActivityIndicator.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16.0).isActive = true
        mediumActivityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        largeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0).isActive = true
        largeLabel.centerYAnchor.constraint(equalTo: largeActivityIndicator.centerYAnchor).isActive = true
        
        largeActivityIndicator.topAnchor.constraint(equalTo: mediumActivityIndicator.bottomAnchor, constant: 16.0).isActive = true
        largeActivityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        largeActivityIndicator.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16.0).isActive = true
    }
}
