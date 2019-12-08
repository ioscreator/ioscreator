//
//  ContentView.swift
//  SwiftUIDividerTutorial
//
//  Created by Arthur Knopper on 08/12/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30){
            Group {
                // 1.
                Text("Horizontal Divider")
                Divider()
                Image(systemName: "1.circle")
                Divider()
            }
            
            Group {
                Text("Vertical Divider")
                // 2.
                HStack {
                    Divider()
                    Image(systemName: "2.circle")
                    Divider()
                }.frame(height: 100)
                
                Group {
                    // 3.
                    Text("Change Divider Color")
                    Image(systemName: "3.circle")
                    Divider().background(Color.red)
                    
                    // 4.
                    Text("Change Divider Size")
                    Image(systemName: "4.circle")
                    Divider().frame(width: 200)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
