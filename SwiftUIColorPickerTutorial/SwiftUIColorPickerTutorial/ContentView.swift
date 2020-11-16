//
//  ContentView.swift
//  SwiftUIColorPickerTutorial
//
//  Created by Arthur Knopper on 28/06/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = Color.red
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 20) {
      
                Rectangle()
                    .fill(selectedColor)
                    .frame(width: 100, height: 100)
          
                ColorPicker("Set the rectangle color", selection: $selectedColor)
                    .padding()
                
                Spacer()
            
            }.navigationTitle("Color picker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
