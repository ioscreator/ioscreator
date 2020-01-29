//
//  CarDetailViewController.swift
//  IOSAddRowsTableViewTutorial
//
//  Created by Arthur Knopper on 29/01/2020.
//  Copyright © 2020 Arthur Knopper. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {
    @IBOutlet weak var carName: UITextField!
    
    var name:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneSegue" {
            name = carName.text!
        }
    }
    

   
}
