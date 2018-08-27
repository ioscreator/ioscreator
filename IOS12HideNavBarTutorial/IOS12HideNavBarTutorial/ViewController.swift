//
//  ViewController.swift
//  IOS12HideNavBarTutorial
//
//  Created by Arthur Knopper on 27/08/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showFullSize(_ sender: Any) {
        // 1
        let fullImageView = UIImageView(frame: self.view.frame)
        let image = UIImage(named: "sunset.jpg");
        fullImageView.image = image;
        // 2
        view.addSubview(fullImageView)
        // 3
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

