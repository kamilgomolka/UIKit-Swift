//
//  AllControlsPageControlView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsPageControlView: AllControlsBaseView {
    
    // MARK: - Properties
    
    var label1: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.text = "3 pages"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var pageControl1: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        pageControl.backgroundColor = .systemGray2
        pageControl.pageIndicatorTintColor = .white
        pageControl.currentPageIndicatorTintColor = .darkGray
        pageControl.layer.cornerRadius = 13.0
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    var label2: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.text = "100 pages"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var pageControl2: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 100
        pageControl.currentPage = 0
        pageControl.backgroundColor = .systemGray2
        pageControl.pageIndicatorTintColor = .white
        pageControl.currentPageIndicatorTintColor = .darkGray
        pageControl.layer.cornerRadius = 13.0
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    // MARK: - Initialization
    
    override func initialize() {
        super.initialize()
        
        titleLabel.text = "Page control"
    }
    
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(label1)
        addSubview(pageControl1)
        addSubview(label2)
        addSubview(pageControl2)
    }
    
    override func createConstraints() {
        super.createConstraints()
        
        label1.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16.0).isActive = true
        label1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0).isActive = true
        
        pageControl1.leadingAnchor.constraint(equalTo: label1.trailingAnchor, constant: 8.0).isActive = true
        pageControl1.centerYAnchor.constraint(equalTo: label1.centerYAnchor).isActive = true
        
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 24.0).isActive = true
        label2.leadingAnchor.constraint(equalTo: label1.leadingAnchor).isActive = true
        label2.widthAnchor.constraint(equalTo: label1.widthAnchor).isActive = true
        label2.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24.0).isActive = true
        
        pageControl2.leadingAnchor.constraint(equalTo: pageControl1.leadingAnchor).isActive = true
        pageControl2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0).isActive = true
        pageControl2.centerYAnchor.constraint(equalTo: label2.centerYAnchor).isActive = true
    }
}
