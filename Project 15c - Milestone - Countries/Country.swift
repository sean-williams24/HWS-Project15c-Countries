//
//  Country.swift
//  Project 15c - Milestone - Countries
//
//  Created by Sean Williams on 22/10/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import Foundation

// MARK: - Country
struct Country: Codable {
    let name: Name
    let tld: [String]
    let cca2, ccn3, cca3, cioc: String
    let independent: Bool?
    let status: Status
//    let currencies: [String]
    let idd: Idd
    let capital, altSpellings: [String]
    let region: Region
    let subregion: String
    let languages: [String: String]
    let translations: [String: Translation]
    let latlng: [Double]
    let demonym: String
    let landlocked: Bool
    let borders: [String]
    let area: Double
    let flag: String
}

struct Currencies: Codable {
//    case anythingArray([JSONAny])
    let currencyMap: [Currency]

//    init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if let x = try? container.decode([JSONAny].self) {
//            self = .anythingArray(x)
//            return
//        }
//        if let x = try? container.decode([String: Currency].self) {
//            self = .currencyMap(x)
//            return
//        }
//        throw DecodingError.typeMismatch(Currencies.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Currencies"))
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        switch self {
//        case .anythingArray(let x):
//            try container.encode(x)
//        case .currencyMap(let x):
//            try container.encode(x)
//        }
//    }
}

// MARK: - Currency
struct Currency: Codable {
    let name, symbol: String
}

// MARK: - Idd
struct Idd: Codable {
    let root: Root
    let suffixes: [String]
}

enum Root: String, Codable {
    case empty = ""
    case the1 = "+1"
    case the2 = "+2"
    case the3 = "+3"
    case the4 = "+4"
    case the5 = "+5"
    case the6 = "+6"
    case the7 = "+7"
    case the8 = "+8"
    case the9 = "+9"
}

// MARK: - Name
struct Name: Codable {
    let common, official: String
    let native: [String: Translation]
}

// MARK: - Translation
struct Translation: Codable {
    let official, common: String
}

enum Region: String, Codable {
    case africa = "Africa"
    case americas = "Americas"
    case antarctic = "Antarctic"
    case asia = "Asia"
    case europe = "Europe"
    case oceania = "Oceania"
}

enum Status: String, Codable {
    case officiallyAssigned = "officially-assigned"
    case userAssigned = "user-assigned"
}
