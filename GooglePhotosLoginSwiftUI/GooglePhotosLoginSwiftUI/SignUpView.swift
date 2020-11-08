//
//  SignUpView.swift
//  GooglePhotosLoginSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 08/11/20.
//

import SwiftUI

struct SignUpView : View {
    @State private var eye = false
    @State private var confirm = false
    @State var mail = ""
    @State var pass = ""
    @State var repass = ""
    
    var body : some View{
        
        VStack{
            VStack{
                HStack(spacing: 15){
                    
                    Image(systemName: "envelope").foregroundColor(.black)
                    TextField("Email Address", text: self.$mail)
                  
                      if mail != "" {
                          Image(systemName: "checkmark").foregroundColor(.green)
                      }
                      else{
                          Image(systemName: "xmark").foregroundColor(.red)
                      }
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    
                    Image(systemName: "key")
                    .resizable()
                    .frame(width: 15, height: 18)
                    .foregroundColor(.black)
                    
                    
                    if eye {
                        TextField("Password", text: self.$pass)
                            .foregroundColor(.black)
                        
                    }
                    else{
                        SecureField("Password", text: self.$pass)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
                        self.eye.toggle()
                    })
                    {
                      
                        Image(systemName: "eye").foregroundColor(.black)
                    }
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    
                    Image(systemName: "lock")
                    .resizable()
                    .frame(width: 15, height: 18)
                    .foregroundColor(.black)
                  
                
                    if confirm {
                        TextField("Password", text: self.$pass)
                            .foregroundColor(.black)
                        
                        
                    }
                    else{
                        SecureField("Password", text: self.$repass)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
                        self.confirm.toggle()
                    })
                    {
                        Image(systemName: "eye").foregroundColor(.black)
                    }
                    
                }.padding(.vertical, 20)
                
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            Button(action: {
                
            }) {
                
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                
            }.background(
              Color.blue
             )
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
            
            
            
            //Password Matching Logic
            
        
            if pass != repass{
                     Text("Please make sure your passwords match")
                    .font(.callout)
                    .foregroundColor(Color.red)
            }
           
        }
    }
}
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
