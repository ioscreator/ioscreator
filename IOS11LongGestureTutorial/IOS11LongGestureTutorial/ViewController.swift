//
//  ViewController.swift
//  IOS11LongGestureTutorial
//
//  Created by Arthur Knopper on 18/08/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func handleGesture(_ sender: UILongPressGestureRecognizer) {
        if sender.state == UIGestureRecognizerState.began
        {
            let alertController = UIAlertController(title: nil, message:
                "Long-Press Gesture Detected", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
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

