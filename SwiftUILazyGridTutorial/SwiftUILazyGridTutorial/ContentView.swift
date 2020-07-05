//
//  ContentView.swift
//  SwiftUILazyGridTutorial
//
//  Created by Arthur Knopper on 04/07/2020.
//

import SwiftUI

struct ContentView: View {
    
    // flexible = equal sizes
    private var flexibleLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    // fixed width column
    private var fixedLayout = [GridItem(.fixed(100)), GridItem(.fixed(200))]
    
    //  minimum size item
    private var adaptiveLayout = [GridItem(.adaptive(minimum: 100))]
    
    // mix
    private var mixedLayout = [GridItem(.fixed(150)), GridItem(.adaptive(minimum: 50))]
    
    var body: some View {
        
        NavigationView() {
            ScrollView {
                // 1.
                LazyVGrid(columns: flexibleLayout, spacing: 20) {
                // 2.
                //LazyVGrid(columns: fixedLayout, spacing: 20) {
                // 3.
                //LazyVGrid(columns: adaptiveLayout, spacing: 20) {
                // 4.
                //LazyVGrid(columns: mixedLayout, spacing: 20) {
                
                    // Display the item
                    ForEach((1...1000), id: \.self) {
                        Text("\($0)")
                            .font(.title)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                            .background(Color.yellow)
                    }
                }
            }
            .navigationTitle("Lazy Grids")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
