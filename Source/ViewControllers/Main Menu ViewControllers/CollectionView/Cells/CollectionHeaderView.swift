//
//  CollectionHeaderView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 14/04/2022.
//

import UIKit

class CollectionHeaderView: UICollectionReusableView {
    
	// MARK: - Properties
	
	static let identifier = "CollectionHeaderView"
	
	var titleLabel: UILabel = {
		let label = UILabel()
		var systemFont = UIFont.preferredFont(forTextStyle: .title3)
		let customFont = UIFont.systemFont(ofSize: systemFont.pointSize, weight: .bold)
		label.font = customFont
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	// MARK: - Init
	
	override init(frame: CGRect) {
		super.init(frame: frame)

		setup()
	}

	required init?(coder: NSCoder) {
		super.init(coder: coder)

		setup()
	}
	
	func setup() {
		addSubview(titleLabel)
		titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0).isActive = true
		titleLabel.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor, constant: -8.0).isActive = true
		titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
	}
}
