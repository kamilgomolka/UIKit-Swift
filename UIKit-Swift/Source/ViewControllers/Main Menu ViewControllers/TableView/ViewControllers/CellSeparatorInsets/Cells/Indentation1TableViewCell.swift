//
//  Indentation1TableViewCell.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class Indentation1TableViewCell: UITableViewCell {
	
	// MARK: - Properties
	
	static let identifier = "Indentation1TableViewCell"
	
	// MARK: - Init
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		
		setup()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		
		setup()
	}
	
	// MARK: - Setup
	
	func setup() {
		indentationLevel = 1
	}
}
