//
//  ContentView.swift
//  SwiftUIScaleImageTutorial
//
//  Created by Arthur Knopper on 05/08/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var scale: CGFloat = 1.0
    
    var body: some View {
        
        VStack {
            Slider(value: $scale, in: 1.0...10.0, step: 0.1)
                .padding(.bottom, 100)
            Image(systemName: "cloud.rain")
                .scaleEffect(scale)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
