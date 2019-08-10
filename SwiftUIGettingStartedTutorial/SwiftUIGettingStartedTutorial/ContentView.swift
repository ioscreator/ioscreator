//
//  ContentView.swift
//  SwiftUIGettingStartedTutorial
//
//  Created by Arthur Knopper on 12/06/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello ioscreator")
            .font(.largeTitle)
            .foregroundColor(.red)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
