//
//  OtherButtonsViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class OtherButtonsViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet var buttons: [UIButton]!
    
    let clicksCounter = ButtonClicksCounter()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clicksCounter.setup(buttons: buttons)
    }
}
