//
//  ContentView.swift
//  SwiftUIMoveRowsListTutorial
//
//  Created by Arthur Knopper on 29/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = ["One", "Two", "Three", "Four", "Five"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(numbers, id: \.self) { number in
                    Text(number)
                }
                .onMove { (indexSet, index) in
                    self.numbers.move(fromOffsets: indexSet,
                                    toOffset: index)
                }
            
            .navigationBarTitle(Text("Numbers"))
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
