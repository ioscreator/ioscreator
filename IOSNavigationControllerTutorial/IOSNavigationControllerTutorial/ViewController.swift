//
//  ViewController.swift
//  IOSNavigationControllerTutorial
//
//  Created by Arthur Knopper on 27/05/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBAction func showFirstViewController(_ sender: Any) {
    performSegue(withIdentifier: "SegueToFirstVC", sender: self)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "Root View"
  }


}

