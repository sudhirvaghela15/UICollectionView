//
//  Bundle + Extension.swift
//  UICollectionView
//
//  Created by sudhir on 05/07/24.
//

import Foundation


enum FileType: String {
	case json
	case html
	case plist
}

extension Bundle {
	
	func getPath(name: String, type: FileType) -> String? {
		return path(forResource: name, ofType: type.rawValue)
	}
	
	func loadAndDecodeJSON<D: Decodable>(filename: String, keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) throws -> D {
		guard let path = getPath(name: filename, type: .json) else {
			throw NSError(domain: "", code: NSFileNoSuchFileError, userInfo: [NSLocalizedDescriptionKey: "file not found"])
		}
		
		guard let data = try? Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe) else {
			throw NSError(domain: "", code: NSFileNoSuchFileError, userInfo: [NSLocalizedDescriptionKey: "Currupted Data"])
		}
		
		let jsonDecoder = JSONDecoder()
		jsonDecoder.keyDecodingStrategy = keyDecodingStrategy
		
		let decodedModel = try jsonDecoder.decode(D.self, from: data)
		return decodedModel
	}
	
}

