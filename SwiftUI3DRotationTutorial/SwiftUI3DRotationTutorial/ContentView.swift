//
//  ContentView.swift
//  SwiftUI3DRotationTutorial
//
//  Created by Arthur Knopper on 21/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees = 0.0

    @State private var rotateX = true
    @State private var rotateY = true
    @State private var rotateZ = true
    
    var body: some View {
        
        VStack(spacing: 30) {
            Toggle("Rotate X-axis", isOn: $rotateX)
            Toggle("Rotate Y-axis", isOn: $rotateY)
            Toggle("Rotate Z-axis", isOn: $rotateZ)
            
            Button("Hello World") {
                withAnimation(.easeIn(duration: 1)) {
                    self.degrees += 360
                }
            }
            .padding(20)
            .background(Color.red)
            .foregroundColor(Color.white)
            .rotation3DEffect(.degrees(degrees), axis: (x: rotateX ? 1 : 0, y: rotateY ? 1 : 0, z: rotateZ ? 1 : 0))
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
