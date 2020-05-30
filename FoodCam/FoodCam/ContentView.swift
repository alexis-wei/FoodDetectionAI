//
//  ContentView.swift
//  FoodCam
//
//  Created by Alexis Wei on 5/27/20.
//  Copyright © 2020 Alexis Wei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Food.ai")
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                Text("Finding your best ingredients")
                    .font(.subheadline)
                Spacer()
                Text("through artificial intelligence")
                    .font(.subheadline)
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
