//
//  ViewController.swift
//  IOS8SwiftActivityIndicatorTutorial
//
//  Created by Arthur Knopper on 14/09/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
  
  @IBAction func startSpinning(sender: UIButton) {
    activityIndicatorView.startAnimating()
  }
  
  @IBAction func stopSpinning(sender: UIButton) {
    activityIndicatorView.stopAnimating()
  }
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

