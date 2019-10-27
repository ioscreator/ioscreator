//
//  ContentView.swift
//  SwiftUIRotateGestureTutorial
//
//  Created by Arthur Knopper on 27/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var rotateState: Double = 0
    
    var body: some View {
        Image("apple_swift_logo")
            .rotationEffect(Angle(degrees: self.rotateState))
            .gesture(RotationGesture()
                .onChanged { value in
                    self.rotateState = value.degrees
                }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
