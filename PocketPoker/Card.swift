//
//  Models:Card.swift
//  PocketPoker
//
//  Created by 阿部璃紗 on 2025/06/14.
//

import Foundation

struct Card: Identifiable{
    let id = UUID()
    let suit: String
    let rank: String
}
