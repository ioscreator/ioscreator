//
//  ContentView.swift
//  SwiftUIPreviewDevicesTutorial
//
//  Created by Arthur Knopper on 18/09/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Multiple Devices")
                .font(.largeTitle)
            Circle()
                .foregroundColor(Color.blue)
                .padding(.horizontal ,10)
            
            Text("Testing Preview")
                .font(.title)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
           ContentView()
              .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
              .previewDisplayName("iPhone SE")

           ContentView()
              .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
              .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}
