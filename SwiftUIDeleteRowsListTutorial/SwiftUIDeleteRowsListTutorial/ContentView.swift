//
//  ContentView.swift
//  SwiftUIDeleteRowsListTutorial
//
//  Created by Arthur Knopper on 12/11/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animals = ["Dog", "Cat", "Cow", "Sheep", "Snake"]

    var body: some View {
    
        NavigationView {
            List {
                ForEach(animals, id: \.self) { animal in
                    Text(animal)
                }
                .onDelete(perform: self.deleteRow)
            }
            .navigationBarTitle(Text("Animals"))
        }
    }
    
    private func deleteRow(at indexSet: IndexSet) {
        self.animals.remove(atOffsets: indexSet)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
