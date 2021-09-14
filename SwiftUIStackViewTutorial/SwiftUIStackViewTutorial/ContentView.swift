//
//  ContentView.swift
//  SwiftUIStackViewTutorial
//
//  Created by Arthur Knopper on 14/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*VStack(alignment: .leading, spacing: 50) {
            Text("Hello")
            Text("SwiftUI!")
            Spacer()
        }
        .font(.largeTitle)
        .padding()
        .border(Color.red, width: 5)
       */
        VStack {
            HStack(spacing: 10) {
              Text("Mac")
              Text("iPad")
              Text("iPhone")
              Text("Watch")
            }
            .font(.largeTitle)
            .padding()
            .border(Color.red, width: 5)
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
