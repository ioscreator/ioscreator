//
//  ContentView.swift
//  SwiftUIGeometryReaderTutorial
//
//  Created by Arthur Knopper on 15/11/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        
        
        GeometryReader { geometry in
        Rectangle()
            //.path(in: CGRect(x: geometry.size.width + 5, y: 0, width: geometry.size.width / 2.0, height: geometry.size.height / 2.0))
            .path(in: CGRect(x: 20, y: 20, width: geometry.size.width, height: geometry.size.height))
            .fill(Color.blue)
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Text("One")
                        .frame(width: geometry.size.width, height: geometry.size.height/2)
                        .background(Color.red)
                       
                    HStack {
                        Text("Two")
                            .frame(width: geometry.size.width/2, height: geometry.size.height/2)
                            .background(Color.blue)
                        Text("Three")
                            .frame(width: geometry.size.width/2, height: geometry.size.height/2)
                            .background(Color.yellow)
                    }
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
