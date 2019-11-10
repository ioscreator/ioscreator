//
//  ContentView.swift
//  SwiftUIOverlayViewsTutorial
//
//  Created by Arthur Knopper on 08/11/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("catalina-dark")
           .resizable()
           .scaledToFit()
            .overlay(
                Text("Mac OS Catalina")
                .foregroundColor(.gray)
                .font(.largeTitle)
            ,alignment: .bottomTrailing)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
