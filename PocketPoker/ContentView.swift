//
//  ContentView.swift
//  PocketPoker

import SwiftUI

struct ContentView: View {
    @State private var playerCount=2
    @State private var cpuCount = 1
    @State private var useCPU = true
    @State private var currentStep = 1 // 1:人数選択，2:CPU選択, 3:ゲーム画面
    var body: some View {
        VStack {
            if currentStep == 1{
                PlayerCountSelectionView(playerCount: $playerCount, onNext: {
                    currentStep = 2
                })
            } else if currentStep == 2{
                CPUSettingsView(totalPlayers: $playerCount,cpuEnabled: $useCPU, cpuCount: $cpuCount, onNext: {
                    currentStep = 3
                })
            } else if currentStep == 3{
                GameView(playerCount: playerCount, cpuCount: useCPU ? cpuCount : 0)
            }
        }
    }
}
