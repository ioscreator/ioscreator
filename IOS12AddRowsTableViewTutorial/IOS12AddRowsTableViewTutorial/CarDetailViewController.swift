//
//  CarDetailViewController.swift
//  IOS12AddRowsTableViewTutorial
//
//  Created by Arthur Knopper on 20/09/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {
    var name: String = ""

    @IBOutlet weak var carName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneSegue" {
            name = carName.text!
        }
    }
    

}
