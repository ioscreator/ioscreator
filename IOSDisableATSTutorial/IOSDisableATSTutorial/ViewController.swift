//
//  ViewController.swift
//  IOSDisableATSTutorial
//
//  Created by Arthur Knopper on 14/01/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webRequest()
    }
    
    func webRequest() {
        //let url = NSURL(string: "http://localhost:8000")
        guard let url = URL(string: "http://localhost:8000") else {
            return
        }
        
       /* let task = URLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            if let dataReturned = data {
                print(NSString(data: dataReturned, encoding: NSUTF8StringEncoding)!)
            }
        }*/
        
        let task = URLSession.shared.dataTask(with: url) {
            (data,response,error)  in
            if let dataReturned = data {
                print(String(data: dataReturned, encoding: String.Encoding.utf8)!)
            } 
        }
        
        
        
        task.resume()
    }


}

