//
//  AllControlsProgressView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsProgressView: AllControlsBaseView {
    
    // MARK: - Properties
    
    var label1: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.text = "UIProgressViewStyleDefault"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var progressView1: UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.progress = 0.5
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    var label2: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.text = "UIProgressViewStyleBar (for use in a toolbar)"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var progressView2: UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.progress = 0.5
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    // MARK: - Initialization
    
    override func initialize() {
        super.initialize()
        
        titleLabel.text = "Progress view"
    }
    
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(label1)
        addSubview(progressView1)
        addSubview(label2)
        addSubview(progressView2)
    }
    
    override func createConstraints() {
        super.createConstraints()
        
        label1.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16.0).isActive = true
        label1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0).isActive = true
        
        progressView1.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 8.0).isActive = true
        progressView1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0).isActive = true
        progressView1.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0).isActive = true
        
        label2.topAnchor.constraint(equalTo: progressView1.bottomAnchor, constant: 24.0).isActive = true
        label2.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0).isActive = true
        
        progressView2.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 8.0).isActive = true
        progressView2.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0).isActive = true
        progressView2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0).isActive = true
        progressView2.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24.0).isActive = true
    }
}
