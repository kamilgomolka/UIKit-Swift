//
//  SimpleTabbarChild2.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/04/2022.
//

import UIKit

class SimpleTabbarChild2: SingleLabelViewController {
	
	// MARK: - Init
	
	init() {
		super.init(labelText: "Child2")
		
		print("SimpleTabbarChild2 - init")
		
		setupTabbarItem()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		
		print("SimpleTabbarChild2 - init(coder:)")
		
		setupTabbarItem()
	}
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		print("SimpleTabbarChild2 - loadView")
	}
	
	deinit {
		print("SimpleTabbarChild2 - deinit")
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		print("SimpleTabbarChild2 - viewWillAppear")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		
		print("SimpleTabbarChild2 - viewWillDisappear")
	}
	
	// MARK: - Setup
	
	func setupTabbarItem() {
		tabBarItem.title = "Child2"
		tabBarItem.image = UIImage(systemName: "clock.fill")
	}
}
