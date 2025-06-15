//
//  GameView.swift
//  PocketPoker

import SwiftUI

struct GameView: View{
    let playerCount: Int
    let cpuCount: Int
    
    @State private var playerHands: [[Card]] = []
    @State private var currentPlayer = 0
    
    var body: some View{
        VStack(spacing: 20){
            Text("プレイヤー人数: \(playerCount),CPU人数: \(cpuCount)")
                .font(.headline)
            
            Text("現在のターン: プレイヤー\(currentPlayer + 1)")
                .font(.title2)
                .padding()
            
            if playerHands.isEmpty{
                Button("手札を配る"){
                    dealCards()
                }
                .font(.title2)
                .padding()
            } else{
                ScrollView{
                    ForEach(0..<playerHands.count, id: \.self){ i in
                        VStack(alignment: .leading) {
                            Text(i < playerCount ? "プレイヤー\(i+1)" : "CPU \(i - playerCount + 1)")
                                .font(.headline)
                            HStack{
                                ForEach(playerHands[i]){
                                    card in Text("\(card.rank)\(card.suit)")
                                        .font(.largeTitle)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        .padding()
    }
    func dealCards(){
        let suits = ["♠️","❤️","♦️","♣️"]
        let ranks = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
        
        var deck = suits.flatMap{ suit in ranks.map {
            rank in Card(suit: suit, rank: rank)}}
        deck.shuffle()
        
        let totalPlayers = playerCount + cpuCount
        playerHands = Array(repeating: [], count: totalPlayers)
        
        for _ in 0..<5{
            for i in 0..<totalPlayers{
                if let card = deck.popLast(){
                    playerHands[i].append(card)
                }
            }
        }
    }
}


