//
//  LabelTextStylesViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/03/2022.
//

import UIKit

class LabelTextStylesViewController: StackViewController {
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		let labels = [
			label(text: "Caption2",      textStyle: .caption2),
			label(text: "Caption1",      textStyle: .caption1),
			label(text: "Footnote",      textStyle: .footnote),
			label(text: "Subheadline",   textStyle: .subheadline),
			label(text: "Callout",       textStyle: .callout),
			label(text: "Body",          textStyle: .body),
			label(text: "Headline",      textStyle: .headline),
			label(text: "Title3",        textStyle: .title3),
			label(text: "Title2",        textStyle: .title2),
			label(text: "Title1",        textStyle: .title1),
			label(text: "LargeTitle",    textStyle: .largeTitle)
			//label(text: "LargeTitle + 4pt", textStyle: .largeTitle, offset: 4.0),
		]
		
		for label in labels {
			stackView.addArrangedSubview(label)
		}
	}
	
	private func label(text: String, textStyle: UIFont.TextStyle) -> UILabel {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: textStyle)
		label.text = text
		return label
	}
	
	private func label(text: String, textStyle: UIFont.TextStyle, offset: CGFloat) -> UILabel {
		let label = UILabel()
		
		let font = UIFont.preferredFont(forTextStyle: textStyle)
		let fontAdjusted = UIFont(descriptor: font.fontDescriptor, size: font.pointSize + offset)
		label.font = fontAdjusted
		
		label.text = text
		return label
	}
}
