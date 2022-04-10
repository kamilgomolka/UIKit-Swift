//
//  FontSizesViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/03/2022.
//

import UIKit

class FontSizesViewController: StackViewController {
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		let fontSizes: [CGFloat] = [
			4,
			5,
			6,
			7,
			8,
			9,
			10,
			11,
			12,
			13,
			14,
			15,
			16,
			17,
			18,
			19,
			20,
			22,
			24,
			26,
			28,
			30,
			40,
			50,
			60,
			70,
			80
		]
		
		for size in fontSizes {
			let label = label(fontSize: size)
			stackView.addArrangedSubview(label)
		}
	}
	
	private func label(fontSize: CGFloat) -> UILabel {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: fontSize)
		
		if fontSize <= 30 {
			label.text = "This is font size \(Int(fontSize))"
		} else {
			label.text = "Font \(Int(fontSize))"
		}
		
		return label
	}
}
