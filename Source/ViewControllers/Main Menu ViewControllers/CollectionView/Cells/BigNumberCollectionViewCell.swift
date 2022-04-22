//
//  BigNumberCollectionViewCell.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 14/04/2022.
//

import UIKit

class BigNumberCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
	static let identifier = "BigNumberCollectionViewCell"
    
    var label: UILabel = {
		let label = UILabel()
		label.font = UIFont.preferredFont(forTextStyle: .title1)
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
		contentView.backgroundColor = .tertiarySystemBackground
		contentView.layer.borderColor = UIColor.systemGray3.cgColor
		contentView.layer.borderWidth = 1.0
		contentView.layer.cornerRadius = 8.0
		
		contentView.addSubview(label)
		label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
		label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
	}
	
    // MARK: - Update cell with data
    
    func updateView(number: Int) {
        label.text = "\(number)"
    }
}

