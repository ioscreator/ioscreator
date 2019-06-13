//
//  ContentView.swift
//  SwiftUIStackTutorial
//
//  Created by Arthur Knopper on 13/06/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        /*VStack(alignment: .leading, spacing: 50) {
            Text("Hello")
            Text("SwiftUI !!")
        }
        .font(.largeTitle)*/
            
        HStack(spacing: 20) {
            Text("Mac")
            Text("iPad")
            Text("iPhone")
            Text("Watch")
        }
        .font(.largeTitle)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
