//
//  ContentView.swift
//  SwiftUISpringAnimationTutorial
//
//  Created by Arthur Knopper on 04/11/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotatingAngle: Double = 0
    
    var body: some View {
        Button(action: {
            self.rotatingAngle += 90
        }) {
             Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(rotatingAngle))
                .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 1))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
