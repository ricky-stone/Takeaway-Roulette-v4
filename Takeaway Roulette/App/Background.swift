//
//  Background.swift
//  Takeaway Roulette
//
//  Created by Ricky Stone on 05/05/2022.
//

import SwiftUI

struct Background: View {
    
    var color: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(color)
            
            Image("board2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.03)
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background(color: Color.white)
    }
}
