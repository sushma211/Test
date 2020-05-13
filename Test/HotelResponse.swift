//
//  HotelResponse.swift
//  Test
//
//  Created by Apple on 13/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

// MARK: - HotelResponse
struct HotelResponse: Decodable {
    var restaurants: [Restaurant]
}

// MARK: - Restaurant
struct Restaurant: Codable {
    let id: Int
    let name: String
    let neighborhood: String?
    let photograph, address: String
    let distance: Double
    let cuisineType: String
    let reviews: [Review]
    
    enum CodingKeys: String, CodingKey {
        case id, name, neighborhood, photograph, address, distance
        case cuisineType = "cuisine_type"
        case reviews
    }
}
// MARK: - Review
struct Review: Codable {
    let name: String
    let date: String
    let rating: Int
    let comments: String
}


