//
//  ContentView.swift
//  SwiftUIScrollViewReaderTutorial
//
//  Created by Arthur Knopper on 18/02/2021.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.yellow, .red, .blue]
    @State private var itemNumber = 1
   
    var body: some View {
       ScrollView {
            ScrollViewReader { value in
                HStack {
                    Stepper(value: $itemNumber, label: {
                          Text("Jump to Item: ")
                    })
                    Button {
                        withAnimation {
                            value.scrollTo(itemNumber)
                        }
                    }  label: {
                        Text("\(itemNumber)")
                    }
                }.padding()
                ForEach(1..<10) { i in
                    Text("Item \(i)")
                        .frame(width: 300, height: 200)
                        .background(colors[i % colors.count])
                        .id(i)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
