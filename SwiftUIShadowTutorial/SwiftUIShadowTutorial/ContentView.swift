//
//  ContentView.swift
//  SwiftUIShadowTutorial
//
//  Created by Arthur Knopper on 23/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Shadow in SwiftUI")
            .foregroundColor(Color.red)
            .font(.title)
            .bold()
            .padding()
           .shadow(color: Color.gray, radius: 3, x: 15, y: 20)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
