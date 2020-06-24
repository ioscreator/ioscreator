//
//  ContentView.swift
//  SwiftUITextEditorTutorial
//
//  Created by Arthur Knopper on 24/06/2020.
//

import SwiftUI

struct ContentView: View {
    // 1.
    @State private var text: String = "Enter some text: "
    
    var body: some View {
        VStack {
            // 2.
            TextEditor(text: $text)
                .padding()
                .foregroundColor(Color.red)
                .font(.title)
    
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
