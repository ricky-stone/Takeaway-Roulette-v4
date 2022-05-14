//
//  WheelModel.swift
//  Takeaway Roulette
//
//  Created by Ricky Stone on 05/05/2022.
//

import SwiftUI

class WheelModel: ObservableObject {
    
    @Published var isFlashing: Bool = false
    @Published var flashCount: Int = 0
    @Published var slice: Double = 2 * 3.14159265 / 30
    @Published var timer = Timer.publish(every: 0.1, tolerance: 0.1, on: .main, in: .common).autoconnect()
    
    func runLights() {
        flashCount += 1

        if ((flashCount % 2) != 0) {
            isFlashing = true
        } else {
            isFlashing = false
        }
    }
    
    
    
}
