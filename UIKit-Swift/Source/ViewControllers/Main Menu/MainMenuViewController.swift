//
//  MainMenuViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 15/03/2022.
//

import UIKit

class MainMenuViewController: MenuViewController<MainMenuItem> {
    
    override func loadView() {
        super.loadView()
        
        title = "UIKit-Swift"
    }
}
