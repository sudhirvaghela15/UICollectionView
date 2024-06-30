
import Foundation

extension Character {
    static let ff7Stubs: [Character] = {
        guard let items: [Character] = try? Bundle.main.loadAndDecodeJSON(filename: "ff7r", keyDecodingStrategy: .convertFromSnakeCase) else {
            return []
        }
        return items
    }()
}


extension Bundle {
    
    func loadAndDecodeJSON<D: Decodable>(filename: String, keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) throws -> D {
//        guard
//            let url = url(forResource: filename, withExtension: "string")
//        else {
//            throw NSError(domain: "", code: NSFileNoSuchFileError, userInfo: [NSLocalizedDescriptionKey: "file not found"])
//        }
//		let data = try Data(contentsOf: url)
		let  data = Data(ff7rData.utf8)
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = keyDecodingStrategy
        
        let decodedModel = try jsonDecoder.decode(D.self, from: data)
        return decodedModel
    }
    
}
