//
//  ContentView.swift
//  SwiftUICircularImageTutorial
//
//  Created by Arthur Knopper on 02/09/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("swiftui-logo")
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle().stroke(Color.red, lineWidth: 5))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
