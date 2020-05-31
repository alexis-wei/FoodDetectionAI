//
//  ContentView.swift
//  FoodCam
//
//  Created by Alexis Wei on 5/27/20.
//  Copyright © 2020 Alexis Wei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var useCam = false
    var body: some View {
        VStack(alignment: .center) {
            Camera()
            Text("Things.ai")
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                Text("Finding the best recipes with your ingredients through artificial intelligence")
                    .font(.subheadline)
                    .padding()
                
            }
            .padding()
            Button(action: {
                PhotoTaking()
            }) {
                Text("CAMERA")
                    .font(.custom("Avenir Next", size: 20))
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(40)
                    .foregroundColor(.white)
            }
            if useCam {
            Text("Launch camera on phone")
                   .font(.largeTitle)
           }
        
            
        }
    .padding()
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
