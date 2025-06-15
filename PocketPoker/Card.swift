//
//  Models:Card.swift
//  PocketPoker
//
//

import Foundation

struct Card: Identifiable{
    let id = UUID()
    let suit: String
    let rank: String
}
