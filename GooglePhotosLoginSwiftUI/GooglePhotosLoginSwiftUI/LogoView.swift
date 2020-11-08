//
//  LogoView.swift
//  GooglePhotosLoginSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 08/11/20.
//

import SwiftUI

//Rotation Animation
struct LogoView : View {
    
    @State var rotate = false
    
    var body : some View{
        ZStack{
        //Rotate Layer
        Image("photoslogo") // Outer image
            .resizable()
            .frame(width : 150 , height: 150)
            .shadow(color: .gray, radius: 5, x: 0.0, y: 0.0)
            .rotationEffect(.degrees(rotate ? -360 : 0))
            .animation(Animation.easeInOut(duration: 5).repeatForever(autoreverses: false))
            .onAppear() {
            self.rotate.toggle()
                }
            }
    }
    
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
