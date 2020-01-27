//
//  ViewController.swift
//  IOSActivityIndicatorTutorial
//
//  Created by Arthur Knopper on 27/01/2020.
//  Copyright © 2020 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func startSpinning(_ sender: Any) {
        activityIndicator.startAnimating()
    }
    
    @IBAction func stopSpinning(_ sender: Any) {
        activityIndicator.stopAnimating()
    }
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.style = .large
        activityIndicator.color = .red
    }


}

