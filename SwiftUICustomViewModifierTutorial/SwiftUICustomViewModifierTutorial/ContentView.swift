//
//  ContentView.swift
//  SwiftUICustomViewModifierTutorial
//
//  Created by Arthur Knopper on 14/09/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
             VStack {
                HStack {
                    Button("One") {
                        
                    }
                    .modifier(CustomButton())
                    
                    Button("Two") {

                    }
                    .modifier(CustomButton(buttonForegroundColor: Color.red))
                    
                    Button("Three") {
                        
                    }
                    .modifier(CustomButton(buttonForegroundColor: Color.yellow))
                    
                }
                Spacer()
            }
            .navigationTitle("Custom View Modifiers")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomButton: ViewModifier {
    var buttonForegroundColor = Color.blue
    
    func body(content: Content) -> some View {
        return content
            .font(.largeTitle)
            .background(Color.black)
            .foregroundColor(buttonForegroundColor)
            .cornerRadius(8.0)
            .padding(.top, 50.0)
    }
}

