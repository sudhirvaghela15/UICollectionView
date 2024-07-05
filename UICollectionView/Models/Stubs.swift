
import Foundation

extension Character {
    static let ff7Stubs: [Character] = {
        guard let items: [Character] = try? Bundle.main.loadAndDecodeJSON(filename: "FF7", keyDecodingStrategy: .convertFromSnakeCase) else {
            return []
        }
        return items
    }()
}


