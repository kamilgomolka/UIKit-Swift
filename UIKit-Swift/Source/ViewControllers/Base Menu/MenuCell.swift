//
//  MenuCell.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/03/2022.
//

import UIKit

class MenuCell: UITableViewCell {
    
    // MARK: - Static properties
    
    static let identifier = "MenuCell"
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initialize()
    }
    
    func initialize() {
        self.accessoryType = .disclosureIndicator
    }    
}
