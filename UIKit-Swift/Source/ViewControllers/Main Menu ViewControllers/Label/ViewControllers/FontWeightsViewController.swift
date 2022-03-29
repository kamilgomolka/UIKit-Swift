//
//  FontWeightsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/03/2022.
//

import UIKit

class FontWeightsViewController: UIViewController {
    
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
            newLabel(text: "Ultra light",   weight: .ultraLight),
            newLabel(text: "Thin",          weight: .thin),
            newLabel(text: "Light",         weight: .light),
            newLabel(text: "Regular",       weight: .regular),
            newLabel(text: "Medium",        weight: .medium),
            newLabel(text: "Semibold",      weight: .semibold),
            newLabel(text: "Bold",          weight: .bold),
            newLabel(text: "Heavy",         weight: .heavy),
            newLabel(text: "Black",         weight: .black)
        ]
        
        for label in labels {
            stackView.addArrangedSubview(label)
        }
    }
    
    func newLabel(text: String, weight: UIFont.Weight) -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17.0, weight: weight)
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
