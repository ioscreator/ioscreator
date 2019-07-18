//
//  ContentView.swift
//  SwiftUIStepperTutorial
//
//  Created by Arthur Knopper on 18/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var numberOfItems: Int = 0
    
    var body: some View {
        Stepper(value: $numberOfItems, in: 0...10, label: { Text("Number of items:  \(numberOfItems)")}).padding()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
