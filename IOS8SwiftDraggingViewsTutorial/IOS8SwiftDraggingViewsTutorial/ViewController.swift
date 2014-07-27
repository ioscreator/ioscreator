//
//  ViewController.swift
//  IOS8SwiftDraggingViewsTutorial
//
//  Created by Arthur Knopper on 27/07/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let halfSizeOfView = 25.0
        let maxViews = 25
        let insetSize = CGRectInset(self.view.bounds, CGFloat(Int(2 * halfSizeOfView)), CGFloat(Int(2 * halfSizeOfView))).size
        
        // Add the Views
        for i in 0..<maxViews {
            var pointX = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.width))))
            var pointY = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.height))))
            
            var newView = MyView(frame: CGRectMake(pointX, pointY, 50, 50))
            self.view.addSubview(newView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

