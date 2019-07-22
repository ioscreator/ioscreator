//
//  ContentView.swift
//  SwiftUIGestureTutorial
//
//  Created by Arthur Knopper on 21/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var didTap: Bool = false
    
    var body: some View {
        Text("Tap me")
            .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .gesture(TapGesture()
                .onEnded {
                    self.didTap.toggle()
                }
            )
            .background(didTap ? Color.blue : Color.red)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif



