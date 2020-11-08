//
//  ContentView.swift
//  GooglePhotosLoginSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 07/11/20.
//  The App Wizard  Instagram : @theappwizard2408

import SwiftUI

  struct ContentView: View {
      var body: some View {
          
        ZStack{
            Color.gray.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            HomeView()
     }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
