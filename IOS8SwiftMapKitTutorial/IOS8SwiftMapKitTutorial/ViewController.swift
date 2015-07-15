//
//  ViewController.swift
//  IOS8SwiftMapKitTutorial
//
//  Created by Arthur Knopper on 17/08/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
  @IBOutlet weak var mapView: MKMapView!
                            
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let location = CLLocationCoordinate2D(
      latitude: 51.50007773,
      longitude: -0.1246402
    )
    
    let span = MKCoordinateSpanMake(0.05, 0.05)
    let region = MKCoordinateRegion(center: location, span: span)
    
    mapView.setRegion(region, animated: true)
    
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

