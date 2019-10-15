//
//  ContentView.swift
//  SwiftUIMagnificationGestureTutorial
//
//  Created by Arthur Knopper on 14/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var scale: CGFloat = 1.0

    var body: some View {
       Image("apple-logo")
        .resizable()
        .scaleEffect(scale)
        .frame(width: 100, height: 100)
        .gesture(MagnificationGesture()
            .onChanged { value in
                self.scale = value.magnitude
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
