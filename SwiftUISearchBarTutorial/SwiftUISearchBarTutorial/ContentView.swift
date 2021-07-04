//
//  ContentView.swift
//  SwiftUISearchBarTutorial
//
//  Created by Arthur Knopper on 14/06/2021.
//

import SwiftUI

struct ContentView: View {
    let countries = ["Afghanistan", "Albania", "Algeria", "Angola", "Argentia", "Armenia", "Australia", "Austria"]
    @State private var searchString = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchString == "" ? countries: countries.filter { $0.contains(searchString)}, id: \.self) { country in
                    Text(country)
                }
                .navigationTitle("Countries")
            }
            .searchable(text: $searchString)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
