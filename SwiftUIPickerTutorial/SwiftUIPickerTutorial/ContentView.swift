//
//  ContentView.swift
//  SwiftUIPickerTutorial
//
//  Created by Arthur Knopper on 10/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var selection = 0
    let colors = ["Red","Yellow","Green","Blue"]
    
    var body: some View {
        Picker(selection: $selection, label:
        Text("Picker Name")) {
            ForEach(0 ..< colors.count) { index in
                Text(self.colors[index]).tag(index)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
