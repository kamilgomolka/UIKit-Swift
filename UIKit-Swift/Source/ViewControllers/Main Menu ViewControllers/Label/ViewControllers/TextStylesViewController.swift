//
//  TextStylesViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/03/2022.
//

import UIKit

class TextStylesViewController: UIViewController {
    
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
        
        let labels = [
            newLabel(text: "Caption2",      textStyle: .caption2),
            newLabel(text: "Caption1",      textStyle: .caption1),
            newLabel(text: "Footnote",      textStyle: .footnote),
            newLabel(text: "Subheadline",   textStyle: .subheadline),
            newLabel(text: "Callout",       textStyle: .callout),
            newLabel(text: "Body",          textStyle: .body),
            newLabel(text: "Headline",      textStyle: .headline),
            newLabel(text: "Title3",        textStyle: .title3),
            newLabel(text: "Title2",        textStyle: .title2),
            newLabel(text: "Title1",        textStyle: .title1),
            newLabel(text: "LargeTitle",    textStyle: .largeTitle)
            //newLabel(text: "LargeTitle + 4pt", textStyle: .largeTitle, offset: 4.0),
        ]
        
        for label in labels {
            stackView.addArrangedSubview(label)
        }
    }
    
    func newLabel(text: String, textStyle: UIFont.TextStyle) -> UILabel {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: textStyle)
        label.text = text
        return label
    }
    
    func newLabel(text: String, textStyle: UIFont.TextStyle, offset: CGFloat) -> UILabel {
        let label = UILabel()
        
        let font = UIFont.preferredFont(forTextStyle: textStyle)
        let fontAdjusted = UIFont(descriptor: font.fontDescriptor, size: font.pointSize + offset)
        label.font = fontAdjusted
        
        label.text = text
        return label
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
