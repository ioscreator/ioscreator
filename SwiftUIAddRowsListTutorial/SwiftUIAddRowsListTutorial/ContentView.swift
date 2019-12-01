//
//  ContentView.swift
//  SwiftUIAddRowsListTutorial
//
//  Created by Arthur Knopper on 01/12/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var locations = ["Beach", "Forest", "Desert"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locations, id: \.self) { location in
                    Text(location)
                }
            }
            .navigationBarTitle(Text("Locations"))
            .navigationBarItems(trailing: Button(action: {
                self.addRow()
            }) {
                Image(systemName: "plus")
            })
        }
    }
        
    private func addRow() {
        self.locations.append("New Location")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
