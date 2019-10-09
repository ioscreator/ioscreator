//
//  ContentView.swift
//  SwiftUIDarkModePreviewTutorial
//
//  Created by Arthur Knopper on 09/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Dark mode Preview")
        }.environment(\.colorScheme, .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        // .environment(\.colorScheme, .dark)
    }
}
