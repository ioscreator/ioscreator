//
//  ContentView.swift
//  SwiftUIRotationAnchorPointTutorial
//
//  Created by Arthur Knopper on 27/01/2021.
//

import SwiftUI

struct CustomRectangle: ViewModifier {
    var overlayText = "example"
    
    func body(content: Content) -> some View {
        return content
            .overlay(Text(overlayText).foregroundColor(.white))
            .frame(width: 75, height: 75)
            .foregroundColor(Color.red)
    }
}

struct ContentView: View {
    // 1.
    @State private var isAnimated = false
    
    var body: some View {
        VStack(spacing: 15) {
            
            // 2.
            Button("Change") {
                self.isAnimated.toggle()
            }
            
            
            HStack(spacing: 10) {
                RoundedRectangle(cornerRadius: 10)
                    // 3.
                    .modifier(CustomRectangle(overlayText: "top left"))
                    // 4.
                    .rotationEffect(Angle.degrees(isAnimated ? 90: 0), anchor: .topLeading)
                    .animation(.easeIn(duration: 0.5))
                
                RoundedRectangle(cornerRadius: 10)
                    .modifier(CustomRectangle(overlayText: "top right"))
                    .rotationEffect(Angle.degrees(isAnimated ? -90: 0), anchor: .topTrailing)
                    .animation(.easeIn(duration: 0.5))
            }
            
            HStack(spacing: 10){
                RoundedRectangle(cornerRadius: 10)
                    .modifier(CustomRectangle(overlayText: "bottom left"))
                    .rotationEffect(Angle.degrees(isAnimated ? 90: 0), anchor: .bottomLeading)
                    .animation(.easeIn(duration: 0.5))
                
                RoundedRectangle(cornerRadius: 10)
                    .modifier(CustomRectangle(overlayText: "bottom right"))
                    .rotationEffect(Angle.degrees(isAnimated ? -90: 0), anchor: .bottomTrailing)
                    .animation(.easeIn(duration: 0.5))
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
