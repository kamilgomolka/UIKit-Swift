//
//  SimpleTabbarChild3.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 27/04/2022.
//

import UIKit

class SimpleTabbarChild3: SingleLabelViewController {
	
	// MARK: - Init
	
	init() {
		super.init(labelText: "Child3", withCloseButton: false)
		
		print("SimpleTabbarChild3 - init")
		
		setupTabbarItem()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		
		print("SimpleTabbarChild3 - init(coder:)")
		
		setupTabbarItem()
	}
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = .systemOrange
		
		print("SimpleTabbarChild3 - loadView")
	}
	
	deinit {
		print("SimpleTabbarChild3 - deinit")
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		print("SimpleTabbarChild3 - viewWillAppear")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		
		print("SimpleTabbarChild3 - viewWillDisappear")
	}
	
	// MARK: - Setup
	
	func setupTabbarItem() {
		tabBarItem.title = "Child3"
		tabBarItem.image = UIImage(systemName: "folder.fill")
	}
}
