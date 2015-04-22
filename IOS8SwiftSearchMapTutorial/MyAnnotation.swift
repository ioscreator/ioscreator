//
//  MyAnnotation.swift
//  IOS8SwiftSearchMapTutorial
//
//  Created by Arthur Knopper on 22/04/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import MapKit

class MyAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(0, 0)
    var title: String!
    
    init(coordinate: CLLocationCoordinate2D, title: String) {
        self.coordinate = coordinate
        self.title = title
    }
    
    
}
