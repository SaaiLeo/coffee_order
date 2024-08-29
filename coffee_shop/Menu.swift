//
//  Menu.swift
//  coffee_shop
//
//  Created by Sei Mouk on 27/8/24.
//

import Foundation

struct Menus: Codable {
    let menus : [Menu]
    
    enum CodingKeys: String, CodingKey {
        case menus = "menus"
    }
}

struct Menu: Codable {
    let name: String
    let image: String
    let rating: String
    let price: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case image = "image"
        case rating = "rating"
        case price = "price"
    }
}
