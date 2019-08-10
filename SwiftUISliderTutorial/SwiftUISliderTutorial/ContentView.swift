//
//  ContentView.swift
//  SwiftUISliderTutorial
//
//  Created by Arthur Knopper on 15/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var sliderValue = 0.0
    var minimumValue = 0.0
    var maximumvalue = 100.0
    
    var body: some View {
        VStack {
            HStack {
                Text("\(Int(minimumValue))")
                Slider(value: $sliderValue, in: minimumValue...maximumvalue)
                Text("\(Int(maximumvalue))")
            }.padding()
        
            Text("\(Int(sliderValue))")
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
