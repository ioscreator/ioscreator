//
//  ViewController.swift
//  IOSFlyOverMapKitTutorial
//
//  Created by Arthur Knopper on 07/04/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    let distance: CLLocationDistance = 800
    let pitch: CGFloat = 400
    let heading = 45.0
    var camera: MKMapCamera?
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func rotateLeft(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: {
            self.camera!.heading -= 10
            self.mapView.camera = self.camera!
        })
    }
    @IBAction func rotateRight(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: {
            self.camera!.heading += 10
            self.mapView.camera = self.camera!
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.mapType = .satelliteFlyover
        
        // coordinates of Capitol
        let coordinate = CLLocationCoordinate2DMake(38.889819, -77.009066)
        
        camera = MKMapCamera(lookingAtCenter: coordinate, fromDistance: distance, pitch: pitch, heading: heading)
        mapView.camera = camera!
    }


}

