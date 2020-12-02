//
//  ContentView.swift
//  SwiftUIMapTypeTutorial
//
//  Created by Arthur Knopper on 02/12/2020.
//

import SwiftUI
import MapKit

struct MapViewUIKit: UIViewRepresentable {
    let region: MKCoordinateRegion
    let mapType : MKMapType
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.setRegion(region, animated: false)
        mapView.mapType = mapType
        return mapView
    }
    
    func updateUIView(_ mapView: MKMapView, context: Context) {
        mapView.mapType = mapType
    }
}

struct ContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.61900, longitude: -74.14053) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    @State private var mapType: MKMapType = .standard
        
    var body: some View {
        ZStack {
            
            MapViewUIKit(region: region, mapType: mapType)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
               
                Picker("", selection: $mapType) {
                    Text("Standard").tag(MKMapType.standard)
                    Text("Satellite").tag(MKMapType.satellite)
                    Text("Hybrid").tag(MKMapType.hybrid)
                }
                .pickerStyle(SegmentedPickerStyle())
                .offset(y: -40)
                .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
