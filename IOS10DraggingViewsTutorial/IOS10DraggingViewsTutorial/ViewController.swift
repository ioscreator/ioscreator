//
//  ViewController.swift
//  IOS10DraggingViewsTutorial
//
//  Created by Arthur Knopper on 01/11/2016.
//  Copyright © 2016 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let halfSizeOfView = 25.0
        let maxViews = 25
        let insetSize = self.view.bounds.insetBy(dx: CGFloat(Int(2 * halfSizeOfView)), dy: CGFloat(Int(2 * halfSizeOfView))).size
        
        // Add the Views
        for _ in 0..<maxViews {
            let pointX = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.width))))
            let pointY = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.height))))
            
            let newView = MyView(frame: CGRect(x: pointX, y: pointY, width: 50, height: 50))
            self.view.addSubview(newView)
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

