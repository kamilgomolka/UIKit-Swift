//
//  Indentation2TableViewCell.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class Indentation2TableViewCell: UITableViewCell {
	
	// MARK: - Properties
	
	static let identifier = "Indentation2TableViewCell"
	
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
		indentationLevel = 2
	}
}
