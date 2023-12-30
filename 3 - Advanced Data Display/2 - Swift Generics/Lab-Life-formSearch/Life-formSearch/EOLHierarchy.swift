//
//  EOLHierarchy.swift
//  EOLHierarchy
//


import Foundation

struct Ancestor: Codable {
    var scientificName: String
    var taxonRank: String?
}

struct EOLHierarchy: Codable {
    var ancestors: [Ancestor]?
}
