//
//  ViewController.swift
//  IOSScrollViewPagingTutorial
//
//  Created by Arthur Knopper on 18/12/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let colors = [UIColor.red, UIColor.blue, UIColor.green, UIColor.yellow]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0..<colors.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let subView = UIView(frame: frame)
            subView.backgroundColor = colors[index]
            scrollView.addSubview(subView)
        }
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width * CGFloat(colors.count), height: scrollView.frame.size.height)
    }


}

