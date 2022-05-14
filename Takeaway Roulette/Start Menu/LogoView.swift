//
//  LogoView.swift
//  Takeaway Roulette
//
//  Created by Ricky Stone on 08/05/2022.
//

import SwiftUI

struct LogoView: View {
    
    @StateObject var logoModel = LogoModel()
    
    var body: some View {
        ZStack {
            
            Circle()
                .foregroundColor(Color("Nude"))
                .opacity(0.20)
                .frame(width: 350, height: 350, alignment: .center)
                .overlay(Image("new_hotdog_logo")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .center))
            
            ForEach(1...30, id: \.self) { i in
                
                let angle = logoModel.slice * Double(i)
                let x = 160 * cos(angle)
                let y = 160 * sin(angle)
                
                let even = ((i % 2) == 0)
                let even2 = ((logoModel.flashCount % 3) == 0)
                
                Circle()
                    .frame(width: 15, height: 15, alignment: .center)
                    .offset(x: CGFloat(x), y: CGFloat(y + 0))
                    .foregroundColor(even2 ? even ? logoModel.isFlashing ? Color("New World") : Color("Jazz Age") : logoModel.isFlashing ? Color("Jazz Age") : Color("New World") : even ? logoModel.isFlashing ? Color("New World") : Color("Jazz Age") : logoModel.isFlashing ? Color("Jazz Age") : Color("New World"))
            }
            
        }
        .onReceive(logoModel.timer) { input in
            logoModel.runLights()
        }
        .frame(width: 350, height: 350, alignment: .center)
        .padding()
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
