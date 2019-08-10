//
//  ContentView.swift
//  SwiftUISegmentedControlTutorial
//
//  Created by Arthur Knopper on 08/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var selectorIndex = 0
    @State private var numbers = ["One","Two","Three"]
  
    var body: some View {
        VStack {
            Picker("Numbers", selection: $selectorIndex) {
                ForEach(0 ..< numbers.count) { index in
                    Text(self.numbers[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            Text("Selected value is: \(numbers[selectorIndex])").padding()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
