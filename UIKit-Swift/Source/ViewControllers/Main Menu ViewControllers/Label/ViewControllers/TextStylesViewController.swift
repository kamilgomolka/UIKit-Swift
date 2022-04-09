//
//  TextStylesViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/03/2022.
//

import UIKit

class TextStylesViewController: StackViewController {
	
	// MARK: - Initialization
	
	override func addSubviews() {
		super.addSubviews()
		
		let labels = [
			newLabel(text: "Caption2",      textStyle: .caption2),
			newLabel(text: "Caption1",      textStyle: .caption1),
			newLabel(text: "Footnote",      textStyle: .footnote),
			newLabel(text: "Subheadline",   textStyle: .subheadline),
			newLabel(text: "Callout",       textStyle: .callout),
			newLabel(text: "Body",          textStyle: .body),
			newLabel(text: "Headline",      textStyle: .headline),
			newLabel(text: "Title3",        textStyle: .title3),
			newLabel(text: "Title2",        textStyle: .title2),
			newLabel(text: "Title1",        textStyle: .title1),
			newLabel(text: "LargeTitle",    textStyle: .largeTitle)
			//newLabel(text: "LargeTitle + 4pt", textStyle: .largeTitle, offset: 4.0),
		]
		
		for label in labels {
			stackView.addArrangedSubview(label)
		}
	}
	
	func newLabel(text: String, textStyle: UIFont.TextStyle) -> UILabel {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: textStyle)
		label.text = text
		return label
	}
	
	func newLabel(text: String, textStyle: UIFont.TextStyle, offset: CGFloat) -> UILabel {
		let label = UILabel()
		
		let font = UIFont.preferredFont(forTextStyle: textStyle)
		let fontAdjusted = UIFont(descriptor: font.fontDescriptor, size: font.pointSize + offset)
		label.font = fontAdjusted
		
		label.text = text
		return label
	}
}
