//
//  ViewController.swift
//  IOS9DisableATSTutorial
//
//  Created by Arthur Knopper on 24/09/15.
//  Copyright © 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webRequest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webRequest() {
        let url = NSURL(string: "http://localhost:8000")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            if let dataReturned = data {
                print(NSString(data: dataReturned, encoding: NSUTF8StringEncoding)!)
            }
        }
        
        task.resume()
    }
}



