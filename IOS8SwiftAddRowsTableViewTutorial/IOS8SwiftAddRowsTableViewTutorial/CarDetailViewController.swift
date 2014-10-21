//
//  CarDetailViewController.swift
//  IOS8SwiftAddRowsTableViewTutorial
//
//  Created by Arthur Knopper on 21/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {

  @IBOutlet weak var carName: UITextField!
  var name: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "doneSegue" {
      name = carName.text
    }
  }
}
