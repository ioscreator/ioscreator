//
//  ViewController.swift
//  IOSSafariViewControllerTutorial
//
//  Created by Arthur Knopper on 09/01/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBAction func openURL(_ sender: Any) {
        // check if website exists
        guard let url = URL(string: "https://apple.com") else {
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
        
        safariVC.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    // SFSafariViewControllerDelegate delegate method
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }

}

