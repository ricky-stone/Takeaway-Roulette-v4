//
//  ContentView.swift
//  Takeaway Roulette
//
//  Created by Ricky Stone on 03/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var settings: Settings
    
    var body: some View {
        
        ZStack {
            Background(color: .white)
            
            VStack {
                
               LogoView()
                
                Spacer()
                
                Button(action: {
                    
                    settings.startGame = true
                    
                }, label: {
                    Text("Play Game")
                })
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(settings: Settings())
    }
}
