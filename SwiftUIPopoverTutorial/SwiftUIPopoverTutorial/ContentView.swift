//
//  ContentView.swift
//  SwiftUIPopoverTutorial
//
//  Created by Arthur Knopper on 03/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var isPopoverPresented = false
    
    var body: some View {
        Button(action: {
            self.isPopoverPresented = true
        }) {
            Text("Show Popover")
        }.popover(isPresented: $isPopoverPresented) {
                Text("Popover is Presented")
                    .font(.largeTitle)
                    .frame(width: 500, height: 500)
        }
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
                .previewDisplayName("iPhone 11")
            
            ContentView()
                .previewDevice("iPad (8th generation)")
                .previewDisplayName("iPad")
        }
    }
}
