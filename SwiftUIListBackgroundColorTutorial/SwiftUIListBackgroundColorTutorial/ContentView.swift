//
//  ContentView.swift
//  SwiftUIListBackgroundColorTutorial
//
//  Created by Arthur Knopper on 02/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var items = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    
    var body: some View {
        List {
            ForEach(items.indices) { index in
                Text(items[index])
                    .listRowBackground((index  % 2 == 0) ? Color(.systemBlue) : Color(.yellow))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
