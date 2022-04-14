//
//  TableViewHeadersAndFoottersViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import UIKit

class TableViewHeadersAndFoottersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	// MARK: - Properties
	
	let tableView = UITableView(frame: .zero, style: .plain)
    
    override func loadView() {
        super.loadView()
		
		setupTableView()
	}
        
	func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
		tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
		tableView.register(TableViewSectionHeaderView.self, forHeaderFooterViewReuseIdentifier: TableViewSectionHeaderView.identifier)
        tableView.sectionHeaderHeight = UITableView.automaticDimension
        tableView.estimatedSectionHeaderHeight = 52.5
        tableView.sectionHeaderTopPadding = 0.0
		tableView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(tableView)
		
		tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: TableViewSectionHeaderView.identifier)
                as? TableViewSectionHeaderView else {
            return nil
        }
        
		headerView.contentView.backgroundColor = section % 2 == 0
            ? UIColor.systemGray3
            : UIColor.systemGray5
        
        headerView.titleLabel.text = "Section header [\(section)]"
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)
        
        cell.textLabel?.text = "Cell [\(indexPath.section), \(indexPath.row)]"
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
