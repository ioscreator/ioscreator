//
//  ContentView.swift
//  SwiftUIMapAnnotationTutorial
//
//  Created by Arthur Knopper on 16/11/2020.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct ContentView: View {
    // 1.
    let places = [
        Place(name: "British Museum", latitude: 51.519581, longitude: -0.127002),
        Place(name: "Tower of London", latitude: 51.508052, longitude: -0.076035),
        Place(name: "Big Ben", latitude: 51.500710, longitude: -0.124617)
    ]
    
    // 2.
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.514134, longitude: -0.104236),
        span: MKCoordinateSpan(latitudeDelta: 0.075, longitudeDelta: 0.075))
    
  
    var body: some View {
        // 3.
        Map(coordinateRegion: $region, annotationItems: places) { place in
            // Insert an annotation type here
            //MapPin(coordinate: place.coordinate)
            MapMarker(coordinate: place.coordinate)
            
           /* MapAnnotation(coordinate: place.coordinate, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                Circle()
                    .strokeBorder(Color.red, lineWidth: 10)
                    .frame(width: 44, height: 44)
            }*/
        }
        
        .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


