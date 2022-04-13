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
