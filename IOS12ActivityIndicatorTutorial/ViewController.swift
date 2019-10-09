//
//  ViewController.swift
//  IOS12ActivityIndicatorTutorial
//
//  Created by Arthur Knopper on 09/06/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var activityView: UIActivityIndicatorView!
    
    
    @IBAction func startSpinning(_ sender: Any) {
        activityView.startAnimating()
    }
    
    @IBAction func stopSpinning(_ sender: Any) {
        activityView.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

