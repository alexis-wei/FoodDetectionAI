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
        
        Image("film-camera-pngrepo-com").resizable()
            .padding(10)
            .frame(width: 120, height: 120, alignment: .center)
        
    }
}

struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        Camera()
    }
}
