//
//  Value2StyleTableViewCell.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class Value2StyleTableViewCell: UITableViewCell {
	
	// MARK: - Properties
	
	static let identifier = "Value2StyleTableViewCell"
	
	// MARK: - Init
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: .value2, reuseIdentifier: reuseIdentifier)
		
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
