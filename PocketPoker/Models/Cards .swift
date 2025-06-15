import Foundation

enum Suit: String, CaseIterable{
    case spades = "♤"
    case hearts = "♡"
    case diamonds = "♢"
    case clubs = "♧"
}

enum Rank: String, CaseIterable{
    case two = "2", three = "3", four = "4", five = "5"
    case six = "6", seven = "7", eight = "8", nine = "9"
    case ten = "10", jack = "J", queen = "Q", king = "K", ace = "A"
}

struct Card: Identifiable{
 let id = UUID()
 let suit: Suit
 let rank: Rank
}
