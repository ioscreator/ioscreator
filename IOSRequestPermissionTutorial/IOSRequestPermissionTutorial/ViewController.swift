//
//  ViewController.swift
//  IOSRequestPermissionTutorial
//
//  Created by Arthur Knopper on 25/01/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()
    
    @IBAction func getLocation(_ sender: Any) {
        // 1
        let status = CLLocationManager.authorizationStatus()
        
        switch status {
            // 1
        case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
                return
            
            // 2
        case .denied, .restricted:
            let alert = UIAlertController(title: "Location Services disabled", message: "Please enable Location Services in Settings", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
            return
        case .authorizedAlways, .authorizedWhenInUse:
            break
       
        }
        
        // 4
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // 1
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let currentLocation = locations.last {
            print("Current location: \(currentLocation)")
        }
    }
    
    // 2
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }


}

