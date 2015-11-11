//
//  ViewController.swift
//  IOS9OpenPDFTutorial
//
//  Created by Arthur Knopper on 11/11/15.
//  Copyright © 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import QuickLook

class ViewController: UIViewController  {
  
  @IBAction func openPDF(sender: AnyObject) {
    let url = NSBundle.mainBundle().URLForResource("Alice_In_Wonderland", withExtension: "pdf")
    
    if let url = url {
      let webView = UIWebView(frame: self.view.frame)
      let urlRequest = NSURLRequest(URL: url)
      webView.loadRequest(urlRequest)
      
      view.addSubview(webView)
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

