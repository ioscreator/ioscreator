//
//  ViewController.swift
//  IOS10ScaleImagesTutorial
//
//  Created by Arthur Knopper on 17/01/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBAction func scaleImage(_ sender: UIPinchGestureRecognizer) {
        myImageView.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
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

