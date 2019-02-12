//
//  ViewController.swift
//  IOSDragViewsGesturesTutorial
//
//  Created by Arthur Knopper on 07/02/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sizeOfView = 50
        let maxViews = 100
        
        let statusBarSize = UIApplication.shared.statusBarFrame.size
    
        // Add the Views
        for _ in 0 ..< maxViews {
            let pointX = Int.random(in: 0 ..< Int(view.bounds.width) - sizeOfView)
            let pointY = Int.random(in: Int(statusBarSize.height) ..< Int(view.bounds.height) - sizeOfView)
            
            let newView = CustomView(frame: CGRect(x: pointX, y: pointY, width: 50, height: 50))
            view.addSubview(newView)
        }
    }
    
}

