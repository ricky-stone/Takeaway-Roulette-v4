//
//  Takeaway_RouletteApp.swift
//  Takeaway Roulette
//
//  Created by Ricky Stone on 03/05/2022.
//

import SwiftUI

@main
struct Takeaway_RouletteApp: App {
    
    @StateObject var settings = Settings()
    
    var body: some Scene {
        WindowGroup {
            if settings.startGame == false {
                ContentView(settings: settings)
                    
            } else {
                RouletteView()
            }
        }
    }
}
