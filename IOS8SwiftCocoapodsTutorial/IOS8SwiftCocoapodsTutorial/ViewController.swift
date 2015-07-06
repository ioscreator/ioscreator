//
//  ViewController.swift
//  IOS8SwiftCocoapodsTutorial
//
//  Created by Arthur Knopper on 23/06/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import FontBlaster



class ViewController: UIViewController {
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        FontBlaster.debugEnabled = true
        FontBlaster.blast()
        label.font = UIFont(name: "OpenSans-Bold", size: 30.0)
        label.text = "Testing Cocoapods"
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

