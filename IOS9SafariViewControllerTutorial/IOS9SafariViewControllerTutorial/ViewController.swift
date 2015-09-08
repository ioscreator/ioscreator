//
//  ViewController.swift
//  IOS9SafariViewControllerTutorial
//
//  Created by Arthur Knopper on 08/09/15.
//  Copyright © 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    @IBAction func openURL(sender: AnyObject) {
        let safariVC = SFSafariViewController(URL: NSURL(string: "http://apple.com")!)
        self.presentViewController(safariVC, animated: true, completion: nil)
        safariVC.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*func safariViewControllerDidFinish(controller: SFSafariViewController)
    {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }*/


}

