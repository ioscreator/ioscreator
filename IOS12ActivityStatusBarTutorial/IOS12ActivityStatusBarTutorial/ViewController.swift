//
//  ViewController.swift
//  IOS12ActivityStatusBarTutorial
//
//  Created by Arthur Knopper on 04/10/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func startActivity(_ sender: Any) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    @IBAction func stopActivity(_ sender: Any) {
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

