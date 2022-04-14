//
//  Person.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 13/04/2022.
//

import Foundation

struct Person: Decodable {
    let id: Int
    let firstName: String?
    let lastName: String?
    let fullName: String?
    let fullNameLowercased: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName
        case lastName
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try container.decode(Int.self, forKey: .id)
        firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        fullName = Person.fullNameValue(firstName: firstName, lastName: lastName)        
        fullNameLowercased = fullName?.lowercased()
    }
    
    private static func fullNameValue(firstName: String?, lastName: String?) -> String? {
        return [lastName, firstName]
            .compactMap { $0 }
            .filter { !$0.isEmpty }
            .joined(separator: " ")
    }
}
