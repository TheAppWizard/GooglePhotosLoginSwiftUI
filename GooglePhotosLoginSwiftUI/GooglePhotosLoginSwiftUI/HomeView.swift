//
//  HomeView.swift
//  GooglePhotosLoginSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 08/11/20.
//

import SwiftUI

struct HomeView : View {
    @State var index = 0
    var body : some View{
        VStack{
          
              //RotatingLogo
               LogoView().padding(.all)
          
          
              Image("nameLogo")
              .resizable()
              .frame(width: 300, height: 60)
          
          
            HStack{
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                       self.index = 0
                    }
                    
                }) {
                  ZStack{
                    Text("Login")
                        .foregroundColor(self.index == 0 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                        .overlay( self.index == 0 ? RoundedRectangle(cornerRadius: 25.0).stroke(Color.blue, lineWidth: 4) : RoundedRectangle(cornerRadius: 25.0).stroke(Color.clear, lineWidth: 4) )
                  }
                    
                }.background(self.index == 0 ? Color.white : Color.clear)
                .clipShape(Capsule())
               
                
                Button(action: {
                   withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                      self.index = 1
                   }
                    
                }) {
                    
                    Text("Register")
                        .foregroundColor(self.index == 1 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                        .overlay( self.index == 0 ? RoundedRectangle(cornerRadius: 25.0).stroke(Color.clear, lineWidth: 4) : RoundedRectangle(cornerRadius: 25.0).stroke(Color.blue, lineWidth: 4) )
                    
                }.background(self.index == 1 ? Color.white : Color.clear)
                .clipShape(Capsule())
                
            }.background(Color.black.opacity(0.1))
            .clipShape(Capsule())
            .padding(.top, 25)
            
            if self.index == 0{
                LoginView()
            }
            else{
                SignUpView()
            }
            
            if self.index == 0{
                Button(action: {
                }) {
                    Text("Forget Password?")
                        .foregroundColor(.blue)
                   }
                .padding(.top, 20)
            }
            
            HStack(spacing: 15){
                Color.black.opacity(0.5)
                .frame(width: 50, height: 1)
                Text("Or")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Color.black.opacity(0.5)
                .frame(width: 50, height: 1)
                
            }
            .padding(.top, 10)
            
            HStack{
              //Button 1
                Button(action: {
                }) {
                    Image("gp")
                      .resizable()
                      .frame(width: 50, height: 50, alignment: .center)
                      .padding()
                }.background(Color.white)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 2, x: 0.0, y: 0.0)

              Spacer().frame(width: 20, height: 0, alignment: .center)
              
              //Button 2
                Button(action: {
                }) {
                    Image("google")
                      .resizable()
                      .frame(width: 50, height: 50, alignment: .center)
                      .padding()
                }.background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(color: .gray, radius: 2, x: 0.0, y: 0.0)
              
                Spacer().frame(width: 20, height: 0, alignment: .center)
              
              //Button 3
                Button(action: {
                }) {
                  VStack{
                    Image(systemName: "plus")
//                     .resizable()
                      .frame(width: 50, height: 50, alignment: .center)
                      .padding()
                  }
                }.background(Color.white)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 2, x: 0.0, y: 0.0)
                
            }
            .padding(.top, 10)
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
