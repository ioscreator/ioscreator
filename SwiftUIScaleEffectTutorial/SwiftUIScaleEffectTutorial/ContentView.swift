//
//  ContentView.swift
//  SwiftUIScaleEffectTutorial
//
//  Created by Arthur Knopper on 01/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var xScaleEffect = 1.0
    @State private var yScaleEffect = 1.0
    @State private var isFlippedVertically = false
    @State private var isFlippedHorizontally = false
    
    var body: some View {
        VStack(spacing: 40) {
            
            Text("ScaleEffect")
                .font(.title)
                .scaleEffect(x: isFlippedVertically ? -1: 1)
                .scaleEffect(y: isFlippedHorizontally ? -1: 1)
                .scaleEffect(x: CGFloat(xScaleEffect))
                .scaleEffect(y: CGFloat(yScaleEffect))
                .border(Color.red, width: 2)
            
            Slider(value: $xScaleEffect, in: 0.0...5.0)
            
            Slider(value: $yScaleEffect, in: 0.0...5.0)
            
            Toggle(isOn: $isFlippedVertically) {
                Text("Flip Vertically")
            }
            
            Toggle(isOn: $isFlippedHorizontally) {
                Text("Flip Vertically")
            }
            
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
