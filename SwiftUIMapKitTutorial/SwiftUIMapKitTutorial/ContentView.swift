//
//  ContentView.swift
//  SwiftUIMapKitTutorial
//
//  Created by Arthur Knopper on 30/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let location = CLLocationCoordinate2D(latitude: 51.50007773,
            longitude: -0.1246402)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        uiView.setRegion(region, animated: true)
            
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Big Ben"
        annotation.subtitle = "London"
        uiView.addAnnotation(annotation)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            MapView()
            .navigationBarTitle(Text("Map View"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
