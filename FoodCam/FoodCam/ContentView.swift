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
        VStack(alignment: .leading) {
            Text("Things.ai")
                .font(.largeTitle)
                .fontWeight(.bold)
            Camera()
            HStack {
                Text("Finding your best ingredients")
                    .font(.subheadline)
                Spacer()
                Text("through artificial intelligence")
                    .font(.subheadline)
            }
            Button(action: {
                self.useCam.toggle()
            }) {
                Text("Show details")
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
