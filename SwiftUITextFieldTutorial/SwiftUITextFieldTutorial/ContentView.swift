//
//  ContentView.swift
//  SwiftUITextFieldTutorial
//
//  Created by Arthur Knopper on 29/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        VStack {
            TextField(" Enter some text", text: $name)
                .border(Color.black)
            Text("Text entered:")
            Text("\(name)")
        }
        .padding()
        .font(.title)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
