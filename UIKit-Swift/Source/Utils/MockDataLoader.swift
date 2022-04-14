//
//  MockDataLoader.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import Foundation

class MockDataLoader {
	
	// MARK: - Singleton
	
	static let shared = MockDataLoader()
	
	// MARK: - Getting mock data
	
	func longText() -> String? {
		return text(fileName: "mockLongText")
	}
	
	func dataDetectorsText() -> String? {
		return text(fileName: "mockDataDetectorsText")
	}
	
	func sequentialNumbersMultilineText(firstNumber: Int = 1, lastNumber: Int = 100) -> String {
		let ints = firstNumber...lastNumber
		let strings = ints.map { "\($0)" }
		return strings.joined(separator: "\n")
	}
	
	func persons() -> [Person] {
		guard let path = Bundle.main.path(forResource: "personData", ofType: "json") else {
			return []
		}
		
		let url = URL(fileURLWithPath: path)
		
		guard let data = try? Data(contentsOf: url),
			  let array = try? JSONDecoder().decode([Person].self, from: data) else {
				  return []
			  }
		
		return array
	}
	
	// MARK: - Private functions
	
	func text(fileName: String) -> String? {
		guard let path = Bundle.main.path(forResource: fileName, ofType: "txt") else {
			return nil
		}
		
		do {
			let contents = try String(contentsOfFile: path)
			return contents
		} catch {
			print("Error while getting mock data. fileName=\(fileName).txt. ", error)
			return nil
		}
	}
}
