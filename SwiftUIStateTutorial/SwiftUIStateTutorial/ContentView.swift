//
//  ContentView.swift
//  SwiftUIStateTutorial
//
//  Created by Arthur Knopper on 25/06/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var userIsLoggedIn = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $userIsLoggedIn) {
                Text("Log in")
            }.padding()
        
            if (userIsLoggedIn) {
                Text("user is logged in")
            } else {
                Text("user is logged out")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
