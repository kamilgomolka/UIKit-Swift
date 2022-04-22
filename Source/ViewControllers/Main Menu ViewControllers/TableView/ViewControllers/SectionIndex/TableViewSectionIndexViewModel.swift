//
//  TableViewSectionIndexViewModel.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import Foundation

class TableViewSectionIndexViewModel {
    
    // MARK: - Properties
    
    var letters: [String] = []
    var sections: [String: [Person]] = [:]
    
    private var persons: [Person] = []
    
    // MARK: - Functions
    
    func loadData() {
		persons = MockDataLoader.shared.persons()
        createSections()
    }
    
    private func createSections() {
        letters = []
        sections = [:]
        
        persons.sort {
            ( $0.fullNameLowercased ?? "" ) < ( $1.fullNameLowercased ?? "" )
        }
        
        for person in persons {
            let letter = person.fullName?.first?.uppercased() ?? "#"
            
            if letters.last == nil || letters.last != letter {
                letters.append(letter)
                sections[letter] = []
            }
            
            sections[letter]?.append(person)
        }
    }
}
