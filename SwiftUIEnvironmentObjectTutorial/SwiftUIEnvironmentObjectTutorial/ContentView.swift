//
//  ContentView.swift
//  SwiftUIEnvironmentObjectTutorial
//
//  Created by Arthur Knopper on 11/09/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score: Int = 0
}

struct ContentView: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        
        NavigationView {
            VStack {
               
                Stepper(value: $settings.score, in: 1...1000000, step: 1000,  label: {
                    Text("Current Score:  \(settings.score)")
                }).padding()
            
                NavigationLink(destination: ScoreView()) {
                    Text("Show Current Score")
                }
            }
        }
    }
}

struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        Text("Score: \(settings.score)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GameSettings())
    }
}
