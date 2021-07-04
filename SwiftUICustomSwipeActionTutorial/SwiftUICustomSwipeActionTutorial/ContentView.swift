//
//  ContentView.swift
//  SwiftUICustomSwipeActionTutorial
//
//  Created by Arthur Knopper on 25/06/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var action = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<6) { i in
                    Text("Item \(i)")
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button {
                                action = "Star"
                            } label: {
                                Label("Star", systemImage: "star.circle")
                    
                            }
                            .tint(.yellow)
                        }
                        .swipeActions(edge: .trailing) {
                            Button(role: .destructive){
                                action = "Trash"
                            } label: {
                                Label("Trash", systemImage: "trash.circle")
                            }
                        }
                        .swipeActions(edge: .trailing) {
                            Button{
                                action = "Flag "
                            } label: {
                                Label("Flag", systemImage: "flag.circle")
                            }
                            .tint(.blue)
                        }
                    }
            }
            .navigationTitle("\(action)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
