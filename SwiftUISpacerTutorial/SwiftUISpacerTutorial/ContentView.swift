//
//  ContentView.swift
//  SwiftUISpacerTutorial
//
//  Created by Arthur Knopper on 08/11/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack {
                Image(systemName: "1.circle.fill")
                Image(systemName: "arrow.left.circle.fill")
                Spacer()
            }.padding()
            
            Spacer()
            
            HStack {
                Image(systemName: "arrow.left.circle.fill")
                Spacer()
                Image(systemName: "2.circle.fill")
                Spacer()
                Image(systemName: "arrow.right.circle.fill")
            }.padding()
            
            Spacer()
            
            HStack {
                Spacer()
                Image(systemName: "arrow.right.circle.fill")
                Image(systemName: "3.circle.fill")
            }.padding()
            
        }
        .foregroundColor(Color.white)
        .background(RoundedRectangle(cornerRadius: 10))
        .foregroundColor(Color.blue)
        .font(.largeTitle)
        .padding()
        .frame(width:400, height: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
