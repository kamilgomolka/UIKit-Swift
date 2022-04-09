//
//  FontWeightsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/03/2022.
//

import UIKit

class FontWeightsViewController: StackViewController {
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
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
}
