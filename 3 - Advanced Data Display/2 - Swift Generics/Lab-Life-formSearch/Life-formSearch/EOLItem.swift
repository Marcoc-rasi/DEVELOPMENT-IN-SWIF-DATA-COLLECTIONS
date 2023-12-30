//
//  EOLItem.swift
//  EOLItem
//


import Foundation

struct EOLItem: Codable {
    var commonName: String
    var scientificName: String
    var id: Int
    
    enum CodingKeys: String, CodingKey {
        case commonName = "content"
        case scientificName = "title"
        case id
    }
}

struct SearchResponse: Codable {
    let results: [EOLItem]
}
