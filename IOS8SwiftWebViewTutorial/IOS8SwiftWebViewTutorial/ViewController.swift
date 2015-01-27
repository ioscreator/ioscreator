//
//  ViewController.swift
//  IOS8SwiftWebViewTutorial
//
//  Created by Arthur Knopper on 07-07-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet var webView: UIWebView!
	
	let url = "http://apple.com"
                            
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
    
        webView.loadRequest(request)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

