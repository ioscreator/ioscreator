//
//  ViewController.swift
//  IOS8SwiftJSONTutorial
//
//  Created by Arthur Knopper on 18/08/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var timeLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 1
    let urlAsString = "http://date.jsontest.com"
    let url = NSURL(string: urlAsString)!
    let urlSession = NSURLSession.sharedSession()
    
    //2
    let jsonQuery = urlSession.dataTaskWithURL(url, completionHandler: { data, response, error -> Void in
      if (error != nil) {
        println(error.localizedDescription)
      }
      var err: NSError?
      
      // 3
      var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as! NSDictionary
      if (err != nil) {
        println("JSON Error \(err!.localizedDescription)")
      }
      
      // 4
      let jsonDate: String! = jsonResult["date"] as! String
      let jsonTime: String! = jsonResult["time"] as! String
      
      dispatch_async(dispatch_get_main_queue(), {
        self.dateLabel.text = jsonDate
        self.timeLabel.text = jsonTime
      })
    })
    // 5
    jsonQuery.resume()
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

