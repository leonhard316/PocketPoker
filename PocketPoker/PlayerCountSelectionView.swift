//
//  PlayerCountSelectionView.swift
//  PocketPoker
//
//

import SwiftUI

struct PlayerCountSelectionView: View{
    @Binding var playerCount: Int
    var onNext: () -> Void
    
    var body: some View {
        VStack(spacing: 30){
            Text("何人で遊びますか？")
                .font(.title)
                .padding()
            
            Picker("人数",selection: $playerCount){
                ForEach(2...6,id: \.self){
                    num in Text("\(num)人").tag(num)
                }
            }
            .pickerStyle(WheelPickerStyle())
            .frame(height: 150)
            
            Button(action: {
                onNext()
            }){
                Text("次へ")
                    .font(.headline)
                    .frame(width:200, height:50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }
    }
    
}
