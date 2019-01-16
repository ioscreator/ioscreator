//
//  ViewController.swift
//  IOSOpenPDFTutorial
//
//  Created by Arthur Knopper on 16/01/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBAction func openPDF(_ sender: Any) {
        let url = Bundle.main.url(forResource: "Alice_In_Wonderland", withExtension: "pdf")
        
        if let url = url {
            let webView = WKWebView(frame: view.frame)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            view.addSubview(webView)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

