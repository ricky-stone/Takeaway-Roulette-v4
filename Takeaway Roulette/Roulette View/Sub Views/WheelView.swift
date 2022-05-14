import SwiftUI

struct WheelView: View {
    
    @StateObject var wheelModel = WheelModel()
    
    var body: some View {
        
        ZStack {
            
            Circle()
                .foregroundColor(Color("Electric Grid"))
                .opacity(0.40)
                .frame(width: 250, height: 250, alignment: .center)
                .overlay(Image("newWheel")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center))
            
            ForEach(1...30, id: \.self) { i in
                
                let angle = wheelModel.slice * Double(i)
                let x = 111 * cos(angle)
                let y = 111 * sin(angle)
                
                let even = ((i % 2) == 0)
                let even2 = ((wheelModel.flashCount % 3) == 0)
                
                Circle()
                    .frame(width: 12, height: 12, alignment: .center)
                    .offset(x: CGFloat(x), y: CGFloat(y + 0))
                    .foregroundColor(even2 ? even ? wheelModel.isFlashing ? Color("New World") : Color("Jazz Age") : wheelModel.isFlashing ? Color("Jazz Age") : Color("New World") : even ? wheelModel.isFlashing ? Color("New World") : Color("Jazz Age") : wheelModel.isFlashing ? Color("Jazz Age") : Color("New World"))
            }
            
        }
        .onReceive(wheelModel.timer) { input in
            wheelModel.runLights()
        }
        .frame(width: 250, height: 250, alignment: .center)
    }
    
}

struct WheelView_Previews: PreviewProvider {
    static var previews: some View {
        WheelView()
    }
}
