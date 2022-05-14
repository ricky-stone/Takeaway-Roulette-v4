//
//  SettingsView.swift
//  Takeaway Roulette
//
//  Created by Ricky Stone on 03/05/2022.
//

import SwiftUI

struct SettingsView: View {
    
    @ObservedObject var settings: Settings
    
    var body: some View {
        Button(action: {
            
            settings.startGame = false
            
        }, label: {
            Text("Restart Game")
        })
    }
}

