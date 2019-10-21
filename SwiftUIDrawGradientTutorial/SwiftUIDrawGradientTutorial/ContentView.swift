//
//  ContentView.swift
//  SwiftUIDrawGradientTutorial
//
//  Created by Arthur Knopper on 21/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       let gradientColors = Gradient(colors: [.red, .blue])
      
        return Rectangle()
            .foregroundColor(.clear)
            .background(LinearGradient(gradient: gradientColors, startPoint: .leading, endPoint: .trailing))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
