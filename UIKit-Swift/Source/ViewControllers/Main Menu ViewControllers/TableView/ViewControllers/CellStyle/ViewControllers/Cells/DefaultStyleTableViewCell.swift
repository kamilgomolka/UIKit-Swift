//
//  DefaultStyleTableViewCell.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class DefaultStyleTableViewCell: UITableViewCell {
	
	// MARK: - Properties
	
	static let identifier = "DefaultStyleTableViewCell"
	
	// MARK: - Init
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: .default, reuseIdentifier: reuseIdentifier)
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
}
