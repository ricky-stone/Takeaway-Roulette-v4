//
//  RouletteView.swift
//  Takeaway Roulette
//
//  Created by Ricky Stone on 05/05/2022.
//

import SwiftUI

struct RouletteView: View {
    
    var body: some View {
        
        ZStack {
            
            Background(color: Color.white)
            
            VStack {
                
                WheelView()
                
            }
        }
    }
}

struct RouletteView_Previews: PreviewProvider {
    static var previews: some View {
        RouletteView()
    }
}
