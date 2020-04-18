//
//  ContentView.swift
//  SwiftUICustomShapeTutorial
//
//  Created by Arthur Knopper on 07/04/2020.
//  Copyright © 2020 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Arrow()
            .stroke(lineWidth: 20)
    }
}

struct Arrow: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let width = rect.width
            let height = rect.height
            
            path.addLines( [
                CGPoint(x: width * 0.4, y: height),
                CGPoint(x: width * 0.4, y: height * 0.4),
                CGPoint(x: width * 0.2, y: height * 0.4),
                CGPoint(x: width * 0.5, y: height * 0.1),
                CGPoint(x: width * 0.8, y: height * 0.4),
                CGPoint(x: width * 0.6, y: height * 0.4),
                CGPoint(x: width * 0.6, y: height)
                
            ])
            path.closeSubpath()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
