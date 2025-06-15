//
//  CPUSettingsView.swift
//  PocketPoker
//
//

import SwiftUI

struct CPUSettingsView: View{
    @Binding var totalPlayers: Int
    @Binding var cpuEnabled: Bool
    @Binding var cpuCount: Int
    var onNext: () -> Void
    
    var maxCPUCount: Int{
        max(0,totalPlayers - 1)
    }
    
    var body: some View{
        VStack(spacing: 30){
            Text("CPUプレイヤーを設定")
                .font(.title)
                .padding()
            
            Toggle("CPUを使う", isOn: $cpuEnabled)
                .padding()
            
            if cpuEnabled{
                Stepper(value: $cpuCount, in: 0...maxCPUCount){
                    Text("CPUプレイヤー数：\(cpuCount)人")
                }
                .padding()
            }
            
            Button(action:{
                onNext()
            }){
                Text("ゲーム開始")
                    .font(.headline)
                    .frame(width: 200, height: 50)
                    .background(cpuEnabled || cpuCount == 0 ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .disabled(!(cpuEnabled || cpuCount == 0))
        }
    }
}
