//
//  ViewController.swift
//  IOS9MultipleOutletsTutorial
//
//  Created by Arthur Knopper on 02/02/16.
//  Copyright © 2016 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        for subview in view.subviews where subview.tag == 10 {
            let button = subview as! UIButton
            button.addTarget(self, action: "changeColorRed:", forControlEvents: .TouchUpInside)
        }
        
        for subview in view.subviews where subview.tag == 20 {
            let button = subview as! UIButton
            button.addTarget(self, action: "changeColorGreen:", forControlEvents: .TouchUpInside)
        }
    }
    
    func changeColorRed(sender: AnyObject) {
        let button: UIButton = sender as! UIButton
        button.tintColor = UIColor.redColor()
    }
    
    func changeColorGreen(sender: AnyObject) {
        let button: UIButton = sender as! UIButton
        button.tintColor = UIColor.greenColor()
    }
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

