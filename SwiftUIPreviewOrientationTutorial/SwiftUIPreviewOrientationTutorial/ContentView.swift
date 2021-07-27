//
//  ContentView.swift
//  SwiftUIPreviewOrientationTutorial
//
//  Created by Arthur Knopper on 27/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
