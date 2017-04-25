//
//  ViewController.swift
//  IOS10FacebookTutorial
//
//  Created by Arthur Knopper on 25/04/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    @IBAction func postToFacebook(_ sender: Any) {
        // 1
        //if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook) {
            // 2
            if let controller = SLComposeViewController(forServiceType: SLServiceTypeFacebook) {
                // 3
                controller.setInitialText("Testing Posting to Facebook")
                // 4
                self.present(controller, animated:true, completion:nil)
            }
        }
        else {
            // 3
            print("no Facebook account found on device")
        }
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

