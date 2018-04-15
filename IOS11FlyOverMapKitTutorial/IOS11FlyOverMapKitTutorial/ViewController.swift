//
//  ViewController.swift
//  IOS11FlyOverMapKitTutorial
//
//  Created by Arthur Knopper on 06/02/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    let distance: CLLocationDistance = 800
    let pitch: CGFloat = 400
    let heading = 45.0
    var camera: MKMapCamera?
    
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

