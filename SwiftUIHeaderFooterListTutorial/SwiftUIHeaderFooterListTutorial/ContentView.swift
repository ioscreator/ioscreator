//
//  ContentView.swift
//  SwiftUIHeaderFooterListTutorial
//
//  Created by Arthur Knopper on 06/11/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let europeanCars = ["Audi","Renault","Ferrari"]
    let asianCars = ["Honda","Nissan","Suzuki"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                    Text("European Cars")) {
                        ForEach(0 ..< europeanCars.count) {
                            Text(self.europeanCars[$0])
                        }
                    }
                
                Section(header:
                    HStack {
                        Image(systemName: "car")
                        Text("Asian Cars")
                    }
                , footer: Text("This is a example list of a few car brands").font(.footnote))  {
                               ForEach(0 ..< asianCars.count) {
                                   Text(self.asianCars[$0])
                               }
                           }
            
            } .navigationBarTitle("Cars")
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
