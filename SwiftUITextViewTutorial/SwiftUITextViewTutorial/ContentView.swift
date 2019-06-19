//
//  ContentView.swift
//  SwiftUITextViewTutorial
//
//  Created by Arthur Knopper on 19/06/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            // 1.
            Text("Hello World")
            
            // 2.
            Text("Dynamic Types Example")
                .font(.largeTitle)
            
            // 3.
            Text("Color Example")
                .foregroundColor(Color.white)
                .background(Color.gray)
            
            // 4.
            Text("Kerning Example").kerning(10)
            
            // 5.
            Text("Style Example")
                .bold()
            
            // 6.
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                
                // 7.
                //.lineLimit(5)
                .lineLimit(nil)
                
                // 8.
                .lineSpacing(10)
                
                // 9.
                .multilineTextAlignment(.center)
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
