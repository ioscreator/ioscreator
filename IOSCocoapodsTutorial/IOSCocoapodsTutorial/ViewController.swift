//
//  ViewController.swift
//  IOSCocoapodsTutorial
//
//  Created by Arthur Knopper on 27/11/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit
import FontBlaster

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FontBlaster.debugEnabled = true
        FontBlaster.blast()
        label.font = UIFont(name: "OpenSans-Bold", size: 30.0)
        label.text = "Testing Cocoapods"
    }
}

