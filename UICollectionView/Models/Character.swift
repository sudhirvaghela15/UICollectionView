
import Foundation

struct Character: Codable, Hashable, Identifiable {
    var id: String {
        name
    }
    
    let name: String
    let imageName: String
    let category: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageName
        case category
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(category)
    }    
}
