//
//  AllControlsSliderView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 25/03/2022.
//

import UIKit

class AllControlsSliderView: AllControlsBaseView {
    
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
    
    var slider: UISlider = {
        let slider = UISlider()    
        slider.minimumValue = 0.0
        slider.maximumValue = 100.0
        slider.value = 50.0
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    // MARK: - Initialization
    
    override func initialize() {
        super.initialize()
        
        titleLabel.text = "Slider"
        startObservingSliderValueChange()
        updateValueLabel()
    }
    
    override func addSubviews() {
        super.addSubviews()
        
        addSubview(valueTitleLabel)
        addSubview(valueLabel)
        addSubview(slider)
    }
    
    override func createConstraints() {
        super.createConstraints()
        
        valueTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0).isActive = true
        valueTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        valueLabel.topAnchor.constraint(equalTo: valueTitleLabel.bottomAnchor, constant: 4.0).isActive = true
        valueLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        slider.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 16.0).isActive = true
        slider.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0).isActive = true
        slider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0).isActive = true
        slider.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16.0).isActive = true
    }
    
    // MARK: - Slider value change
            
    func startObservingSliderValueChange() {
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
    }
    
    @objc func sliderValueChanged() {
        updateValueLabel()
    }
    
    func updateValueLabel() {
        valueLabel.text = String(Int(slider.value))
    }    
}
