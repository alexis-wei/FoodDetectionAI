//
//  Camera.swift
//  FoodCam
//
//  Created by Alexis Wei on 5/29/20.
//  Copyright © 2020 Alexis Wei. All rights reserved.
//

import SwiftUI

struct Camera: View {
    var body: some View {
        
        Image("film-camera-pngrepo-com")
            .padding(20)
            .overlay(
                Rectangle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 5)
        
    }
}

struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        Camera()
    }
}
