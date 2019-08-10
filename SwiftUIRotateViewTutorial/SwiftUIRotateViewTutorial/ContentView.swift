//
//  ContentView.swift
//  SwiftUIRotateViewTutorial
//
//  Created by Arthur Knopper on 25/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var rotation: Double = 0
    
    var body: some View {
        VStack {
            Slider(value: $rotation, in: 0.0...360.0, step: 1.0)
                .padding()
            Image(systemName: "sun.max")
                .rotationEffect(.degrees(rotation))
        }.font(.title)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
