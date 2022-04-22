//
//  AllControlsStepperView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsStepperView: AllControlsBaseView {
    
    // MARK: - Properties
    
    var valueTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .callout)
        label.text = "Selected value:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var valueLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0.0
        stepper.maximumValue = 100.0
        stepper.value = 0.0
        stepper.translatesAutoresizingMaskIntoConstraints = false
        return stepper
    }()
    
    // MARK: - Initialization
    
    override func initialize() {
        super.initialize()
        
        titleLabel.text = "Stepper"
        startObservingStepperValueChange()
        updateValueLabel()
    }
    
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(valueTitleLabel)
        addSubview(valueLabel)
        addSubview(stepper)
    }
    
    override func createConstraints() {
        super.createConstraints()
        
        valueTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0).isActive = true
        valueTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        valueLabel.topAnchor.constraint(equalTo: valueTitleLabel.bottomAnchor, constant: 4.0).isActive = true
        valueLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        stepper.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 16.0).isActive = true
        stepper.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        stepper.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16.0).isActive = true
    }
    
    // MARK: - Stepper value change
            
    func startObservingStepperValueChange() {
        stepper.addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
    }
    
    @objc func stepperValueChanged() {
        updateValueLabel()
    }
    
    func updateValueLabel() {
        valueLabel.text = String(Int(stepper.value))
    }
}
