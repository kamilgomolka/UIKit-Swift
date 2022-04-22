//
//  AllControlsSwitchView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsSwitchView: AllControlsBaseView {
    
    // MARK: - Properties
    
    var switch1: UISwitch = {
        let switchControl = UISwitch()
        switchControl.isOn = true
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        return switchControl
    }()
    
    var switch2: UISwitch = {
        let switchControl = UISwitch()
        switchControl.isOn = true
        switchControl.onTintColor = .systemIndigo
        switchControl.thumbTintColor = .systemYellow
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        return switchControl
    }()
    
    var switch3: UISwitch = {
        let switchControl = UISwitch()
        switchControl.isOn = true
        switchControl.onTintColor = .black
        switchControl.thumbTintColor = .lightGray
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        return switchControl
    }()
    
    // MARK: - Initialization
    
    override func initialize() {
        super.initialize()
        
        titleLabel.text = "Switch"
    }
    
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(switch1)
        addSubview(switch2)
        addSubview(switch3)
    }
    
    override func createConstraints() {
        super.createConstraints()
        
        switch1.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0).isActive = true
        switch1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0).isActive = true
        switch1.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8.0).isActive = true
                        
        switch2.topAnchor.constraint(equalTo: switch1.topAnchor).isActive = true
        switch2.leadingAnchor.constraint(equalTo: switch1.trailingAnchor, constant: 8.0).isActive = true
        
        switch3.topAnchor.constraint(equalTo: switch2.topAnchor).isActive = true
        switch3.leadingAnchor.constraint(equalTo: switch2.trailingAnchor, constant: 8.0).isActive = true
    }
}
