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
			label(text: "Ultra light",   weight: .ultraLight),
			label(text: "Thin",          weight: .thin),
			label(text: "Light",         weight: .light),
			label(text: "Regular",       weight: .regular),
			label(text: "Medium",        weight: .medium),
			label(text: "Semibold",      weight: .semibold),
			label(text: "Bold",          weight: .bold),
			label(text: "Heavy",         weight: .heavy),
			label(text: "Black",         weight: .black)
		]
		
		for label in labels {
			stackView.addArrangedSubview(label)
		}
	}
	
	private func label(text: String, weight: UIFont.Weight) -> UILabel {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 17.0, weight: weight)
		label.text = text
		return label
	}
}
