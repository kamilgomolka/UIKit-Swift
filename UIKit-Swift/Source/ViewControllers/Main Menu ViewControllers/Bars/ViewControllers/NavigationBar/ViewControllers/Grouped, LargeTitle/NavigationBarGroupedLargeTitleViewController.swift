//
//  NavigationBarGroupedLargeTitleViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 18/04/2022.
//


import UIKit

class NavigationBarGroupedLargeTitleViewController: BaseNavigationBarViewController {
	
	// MARK: - Lifecycle
	
	override func loadView() {
		super.loadView()
		
		///
		/// To have large title working, additional property should be set in root ViewController
		/// (in this project, it's done in MainMenuViewController):
		///
		/// navigationController?.navigationBar.prefersLargeTitles = true
		///
		
		navigationItem.largeTitleDisplayMode = .always
	}
	
	// MARK: - Setup
	
	override func createTableView() -> UITableView {
		return UITableView(frame: .zero, style: .insetGrouped)
	}
	
	// MARK: - UITableViewDataSource
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 5
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 5
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: BaseNavigationBarCell.identifier, for: indexPath)
		
		cell.textLabel?.text = "IndexPath [\(indexPath.section), \(indexPath.row)]"
		cell.imageView?.image = UIImage(systemName: "bookmark.square")
		cell.imageView?.tintColor = .systemRed
		cell.accessoryType = .disclosureIndicator
		return cell
	}
}
