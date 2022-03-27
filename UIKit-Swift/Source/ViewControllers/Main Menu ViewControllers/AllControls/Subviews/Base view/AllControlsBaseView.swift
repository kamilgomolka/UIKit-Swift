//
//  AllControlsBaseView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsBaseView: UIView {
    
    // MARK: - Properties
    
    var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont.preferredFont(forTextStyle: .body)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initialize()
    }
    
    func initialize() {
        backgroundColor = .tertiarySystemBackground
        layer.cornerRadius = 8.0
        
        addSubviews()
        createConstraints()
    }
    
    func addSubviews() {
        addSubview(titleLabel)
    }
    
    func createConstraints() {
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8.0).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0).isActive = true
    }
}
