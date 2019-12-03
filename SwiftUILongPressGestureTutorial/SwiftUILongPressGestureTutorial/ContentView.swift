//
//  ContentView.swift
//  SwiftUILongPressGestureTutorial
//
//  Created by Arthur Knopper on 03/12/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var circleColor = Color.yellow
    
    var body: some View {
        
        Circle()
        .foregroundColor(circleColor)
        .frame(width: 200, height: 200, alignment: .center)
        .gesture(LongPressGesture(minimumDuration: 2)
        .onEnded { _ in
            if self.circleColor == .yellow {
                self.circleColor = .red
            } else {
                self.circleColor = .yellow
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
