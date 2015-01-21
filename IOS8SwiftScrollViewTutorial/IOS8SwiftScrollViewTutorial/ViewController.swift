//
//  ViewController.swift
//  IOS8SwiftScrollViewTutorial
//
//  Created by Arthur Knopper on 21/01/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageView: UIImageView!
    var scrollView: UIScrollView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        imageView = UIImageView(image: UIImage(named: "strandvagen.jpg"))
        // 2
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.blackColor()
        // 3
        scrollView.contentSize = imageView.bounds.size
        // 4
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

