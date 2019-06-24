//
//  ContentView.swift
//  SwiftUIListTutorial
//
//  Created by Arthur Knopper on 19/06/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct Weather: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
}

struct ContentView : View {
    let modelData: [Weather] = [Weather(image: "cloud.rain", temp: 21, city: "Amsterdam"),
                                Weather(image: "cloud.sun.rain", temp: 18, city: "London"),
                                Weather(image: "sun.max", temp: 25, city: "Paris"),
                                Weather(image: "cloud.sun", temp: 23, city: "Tokyo")]
    
    
    
    
    var body: some View {
        NavigationView() {
            List(modelData) { weather in
                NavigationButton(destination: Text(weather.city).font(.largeTitle)) {
                    HStack {
                        Image(systemName: weather.image)
                            .frame(width: 50, height: 10, alignment: .leading)
                        Text("\(weather.temp)º")
                            .frame(width: 50, height: 10, alignment: .leading)
                        VStack {
                            Text(weather.city)
                        }
                    }.font(.title)
                }
            }
            .navigationBarTitle(Text("World Weather"))
        }
    }
}


#if DEBUG

/*let testData: [Weather] = [Weather(image: "cloud.rain", temp: 21, city: "Amsterdam"),
                           Weather(image: "cloud.rain", temp: 21, city: "London"),
                           Weather(image: "cloud.rain", temp: 21, city: "Paris"),
                           Weather(image: "cloud.rain", temp: 21, city: "Tokyo")] //title: "Owner")]
                            Employee(name: "Victoria Wenderlich", title: "Digital Artist"),
                            Employee(name: "Andrea Lepley", title: "Video Team Lead"),
                            Employee(name: "Sam Davies", title: "CTO"),
                            Employee(name: "Katie Collins", title: "Customer Support Lead"),
                            Employee(name: "Tiffani Randolph", title: "Marketing Associate")*/



struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
#endif
