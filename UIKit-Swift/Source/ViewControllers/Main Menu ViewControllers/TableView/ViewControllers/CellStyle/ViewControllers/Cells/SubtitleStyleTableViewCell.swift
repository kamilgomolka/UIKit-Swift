//
//  SubtitleStyleTableViewCell.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class SubtitleStyleTableViewCell: UITableViewCell {
	
	// MARK: - Properties
	
	static let identifier = "SubtitleStyleTableViewCell"
	
	// MARK: - Init
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
		
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
