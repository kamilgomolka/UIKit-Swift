//
//  BothSidesSeparatorInsetTableViewCell.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class BothSidesSeparatorInsetTableViewCell: UITableViewCell {
	
	// MARK: - Properties
	
	static let identifier = "BothSidesSeparatorInsetTableViewCell"
	
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
		separatorInset = UIEdgeInsets(top: 0.0, left: 32.0, bottom: 0.0, right: 32.0)
	}
}
