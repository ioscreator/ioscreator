//
//  ContentView.swift
//  SwiftUILinkTutorial
//
//  Created by Arthur Knopper on 30/06/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Link("Read more", destination: URL(string: "https://www.ioscreator.com")!)
            Spacer()
        }
        .padding(.all, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
