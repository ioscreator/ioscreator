//
//  ContentView.swift
//  SwiftUIProgressViewTutorial
//
//  Created by Arthur Knopper on 29/06/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var progress = 0.0
    
    var body: some View {
        VStack(spacing: 30) {
            ProgressView("Progress", value: progress, total: 100)
            Button("Increment Progress") {
                if progress < 100 {
                    progress += 10
                }
            }
            Text("Current Progress: \(Int(progress))%")
            Spacer()
        }
        .padding(.all, 10)
    }
}

/*struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            //.shadow(color: Color(red: 0, green: 0, blue: 0.6),
                //    radius: 4.0, x: 1.0, y: 2.0)
            .//accentColor(.red)
        VStack {
            Text("bla")
        }
        
    }
}*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
