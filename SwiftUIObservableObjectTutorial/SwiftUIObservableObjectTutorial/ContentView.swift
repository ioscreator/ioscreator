//
//  ContentView.swift
//  SwiftUIObservableObjectTutorial
//
//  Created by Arthur Knopper on 09/09/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var stopwatch = Stopwatch()
    
    var body: some View {
        VStack {
            HStack {
            
                Button(action: {
                    self.stopwatch.start()
                }) {
                    Text("Start")
                }
                
                Button(action: {
                    self.stopwatch.stop()
                }) {
                    Text("Stop")
                }
                Button(action: {
                    self.stopwatch.reset()
                }) {
                    Text("Reset")
                }
            }
            
            Text("\(self.stopwatch.counter)")
        }.font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
