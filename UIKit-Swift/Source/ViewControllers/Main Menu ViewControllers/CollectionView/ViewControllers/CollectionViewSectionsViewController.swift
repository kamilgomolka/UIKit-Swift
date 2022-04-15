//
//  CollectionViewSectionsViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 14/04/2022.
//

import UIKit

class CollectionViewSectionsViewController: UIViewController {
    
    // MARK: - Properties
    
    let margin: CGFloat = 8.0
    let headerElementKind = "headerElementKind"
	let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
		
		setupCollectionView()
	}
	
	func setupCollectionView() {
		collectionView.backgroundColor = .systemGroupedBackground
        collectionView.dataSource = self
        collectionView.delegate = self
        
		collectionView.register(BigNumberCollectionViewCell.self,
								forCellWithReuseIdentifier: BigNumberCollectionViewCell.identifier)
        
		collectionView.register(CollectionHeaderView.self,
								forSupplementaryViewOfKind: headerElementKind,
								withReuseIdentifier: CollectionHeaderView.identifier)
        
        collectionView.collectionViewLayout = createLayout()
		
		view.addSubview(collectionView)
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    // MARK: - Layout creation
    
    func createLayout() -> UICollectionViewLayout {
        //
        // Item
        //
		let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
											  heightDimension: .fractionalHeight(1.0))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
		item.contentInsets = NSDirectionalEdgeInsets(top: margin,
													 leading: margin,
													 bottom: 0.0,
													 trailing: 0.0)
        
		//
        // Group
        //
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalWidth(1.0 / 3.0))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 3)
        
		//
        // Section
        //
        let section = NSCollectionLayoutSection(group: group)
        
		section.contentInsets = NSDirectionalEdgeInsets(top: 0.0,
														leading: 0.0,
														bottom: margin,
														trailing: margin)
        
		//
        // Header
        //
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                heightDimension: .absolute(44.0))
        
        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize,
                                                                 elementKind: headerElementKind,
                                                                 alignment: .top)
        
        section.boundarySupplementaryItems = [header]
        
        //
        // Other properties that might be useful:
        //
//         group.interItemSpacing = .fixed(8.0) // (makes spacing between lines, not between items in one line)
//         section.interGroupSpacing = 16.0
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension CollectionViewSectionsViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                           withReuseIdentifier: CollectionHeaderView.identifier,
                                                                           for: indexPath) as? CollectionHeaderView else {
            return UICollectionReusableView()
        }
        
        header.titleLabel.text = "Section \(indexPath.section)"
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BigNumberCollectionViewCell.identifier, for: indexPath) as? BigNumberCollectionViewCell else {
            return UICollectionViewCell()
        }

        let numberToDisplay = indexPath.row + 1
        cell.updateView(number: numberToDisplay)

        return cell
    }
}

extension CollectionViewSectionsViewController: UICollectionViewDelegate {
    
}
