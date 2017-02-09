//
//  ViewController.swift
//  IOS10MapKitTutorial
//
//  Created by Arthur Knopper on 02/02/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        let location = CLLocationCoordinate2D(latitude: 51.50007773,
            longitude: -0.1246402)
        
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Big Ben"
        annotation.subtitle = "London"
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

