//
//  ContentView.swift
//  SwiftUIAnimationTutorial
//
//  Created by Arthur Knopper on 14/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var startAnimation: Bool = false
    
    var body: some View {
        VStack {
            Button("Start Animation") {
                withAnimation(.easeInOut(duration: 4)) {
                    self.startAnimation.toggle()
                }
            }
            
            HStack {
                Spacer()
                Text("🚚")
                    .font(.custom("Arial", size: 100))
                    .offset(x: self.startAnimation ? 0 - UIScreen.main.bounds.width + 100: 0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
