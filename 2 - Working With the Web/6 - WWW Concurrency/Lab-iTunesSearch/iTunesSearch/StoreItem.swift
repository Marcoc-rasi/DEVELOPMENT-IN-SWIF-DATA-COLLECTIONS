
import Foundation

struct StoreItem: Codable {
    let name: String
    let artist: String
    var kind: String
    var description: String
    var artworkURL: URL
    
    enum CodingKeys: String, CodingKey {
        case name = "trackName"
        case artist = "artistName"
        case kind
        case description = "longDescription"
        case artworkURL = "artworkUrl100"
    }
    
    enum AdditionalKeys: String, CodingKey {
        case description = "shortDescription"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.artist = try container.decode(String.self, forKey: .artist)
        self.kind = try container.decode(String.self, forKey: .kind)
        self.artworkURL = try container.decode(URL.self, forKey: .artworkURL)
        
        if let description = try? container.decode(String.self, forKey: .description) {
            self.description = description
        } else {
            let container = try decoder.container(keyedBy: AdditionalKeys.self)
            self.description = (try? container.decode(String.self, forKey: .description)) ?? ""
        }
    }
}

struct SearchResponse: Codable {
    let results: [StoreItem]
}
