//
//  ScrollViewWithPagingViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class ScrollViewWithPagingViewController: UIViewController {
    
    // MARK: - Properties
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .systemBackground
        addSubviews()
        createConstraints()
    }
    
    // MARK: - Initialization
    
    func addSubviews() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        createPages()
    }
    
    func createPages() {
        for index in 0...3 {
            createPageView(index: index)
        }
    }
    
    func createPageView(index: Int) {
        let pageView = UIView()
        
        let colors: [UIColor] = [.systemMint, .systemIndigo, .systemYellow, .systemCyan]
        pageView.backgroundColor = colors[index % colors.count]
        
        stackView.addArrangedSubview(pageView)
        pageView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor).isActive = true
        pageView.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor).isActive = true
        
        createLabel(index: index, superview: pageView)
    }
    
    func createLabel(index: Int, superview: UIView) {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.text = "Page \(index)"
        label.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(label)
        label.centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
    }
    
    func createConstraints() {
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        stackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor).isActive = true
    }
}
