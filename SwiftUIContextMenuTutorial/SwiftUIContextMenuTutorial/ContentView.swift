//
//  ContentView.swift
//  SwiftUIContextMenuTutorial
//
//  Created by Arthur Knopper on 11/12/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Action")
                .font(.title)
                .contextMenu {
                    Button(action: {}) {
                        Text("Share")
                        Image(systemName: "square.and.arrow.up")
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "heart")
                        Text("Favorite")
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
