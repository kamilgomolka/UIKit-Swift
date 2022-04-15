//
//  CollectionBadgeView.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 14/04/2022.
//

import UIKit

class CollectionBadgeView: UICollectionReusableView {
	
	// MARK: - Properties
	
	static let identifier = "CollectionBadgeView"
	
	var label: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15.0)
		label.textColor = .white
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	override var frame: CGRect {
		didSet {
			updateRadius()
		}
	}
	
	override var bounds: CGRect {
		didSet {
			updateRadius()
		}
	}
	
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
		backgroundColor = .systemRed
		
		addSubview(label)
		label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
		label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
	}
	
    // MARK: - Functions
    
    func updateRadius() {
        let radius = bounds.width / 2.0
        layer.cornerRadius = radius
    }
    
    func updateView(number: Int) {
        isHidden = number == 0
        
        label.text = "\(number)"
    }
}
