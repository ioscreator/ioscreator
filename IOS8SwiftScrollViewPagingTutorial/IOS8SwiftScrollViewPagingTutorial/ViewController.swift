//
//  ViewController.swift
//  IOS8SwiftScrollViewPagingTutorial
//
//  Created by Arthur Knopper on 23/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var colors:[UIColor] = [UIColor.redColor(), UIColor.blueColor(), UIColor.greenColor(), UIColor.yellowColor()]
  var frame: CGRect = CGRectMake(0, 0, 0, 0)
  
  @IBOutlet weak var scrollView: UIScrollView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    for index in 0..<colors.count {
      
      frame.origin.x = self.scrollView.frame.size.width * CGFloat(index)
      frame.size = self.scrollView.frame.size
      self.scrollView.pagingEnabled = true
      
      var subView = UIView(frame: frame)
      subView.backgroundColor = colors[index]
      self.scrollView .addSubview(subView)
    }
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * CGFloat(colors.count), self.scrollView.frame.size.height)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

