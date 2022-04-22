//
//  AllControlsSegmentedControlView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsSegmentedControlView: AllControlsBaseView {
    
    // MARK: - Properties
    
    var segmentedControl: UISegmentedControl = {
        let items = ["First",
                     "Second",
                     "Third"]
        
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    // MARK: - Initialization
    
    override func initialize() {
        super.initialize()
        
        titleLabel.text = "Segmented control"
    }
    
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(segmentedControl)
    }
    
    override func createConstraints() {
        super.createConstraints()
        
        segmentedControl.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0).isActive = true
        segmentedControl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0).isActive = true
        segmentedControl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0).isActive = true
        segmentedControl.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8.0).isActive = true
    }
}
