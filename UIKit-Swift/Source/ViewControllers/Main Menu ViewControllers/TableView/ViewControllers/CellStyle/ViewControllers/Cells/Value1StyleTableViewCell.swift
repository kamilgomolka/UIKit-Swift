//
//  Value1StyleTableViewCell.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class Value1StyleTableViewCell: UITableViewCell {
	
	// MARK: - Properties
	
	static let identifier = "Value1StyleTableViewCell"
	
	// MARK: - Init
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: .value1, reuseIdentifier: reuseIdentifier)
		
		setup()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		
		setup()
	}
	
	func setup() {
		detailTextLabel?.textColor = .systemGray
	}
}
