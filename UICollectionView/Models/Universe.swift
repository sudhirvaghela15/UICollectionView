
import Foundation

enum Universe: CaseIterable {
    case ff7r

    
    var stubs: [Character] {
        switch self {
        case .ff7r:
            return Character.ff7Stubs
        }
    }
    
    var sectionedStubs: [SectionCharacters] {
        let stubs = self.stubs
        var categoryCharactersDict = [String: [Character]]()
        stubs.forEach { (character) in
            let category = character.category
            if let characters = categoryCharactersDict[category] {
                categoryCharactersDict[category] = characters + [character]
            } else {
                categoryCharactersDict[category] = [character]
            }
        }
        let sectionedStubs = categoryCharactersDict.map { (category, items) -> SectionCharacters in
            SectionCharacters(category: category, characters: items)
        }.sorted { $0.category < $1.category }
        return sectionedStubs
    }
    
    var title: String {
        switch self {
        case .ff7r:
            return "FF7R"
        }
    }
}
