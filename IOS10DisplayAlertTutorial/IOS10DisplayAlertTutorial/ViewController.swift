//
//  ViewController.swift
//  IOS10DisplayAlertTutorial
//
//  Created by Arthur Knopper on 09/01/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "iOScreator", message:
            "Hello, world!", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
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

