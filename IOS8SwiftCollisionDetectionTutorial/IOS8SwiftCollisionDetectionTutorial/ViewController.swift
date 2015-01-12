//
//  ViewController.swift
//  IOS8SwiftCollisionDetectionTutorial
//
//  Created by Arthur Knopper on 12/01/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var squareViews:[UIView] = []
  var animator:UIDynamicAnimator!
  var colors:[UIColor] = []
  var centerPoint:[CGPoint] = []
  var sizeOfSquare:CGSize!
  
  var leftBoundaryHeight:CGFloat!
  var middleBoundaryHeight:CGFloat!
  var rightBoundaryHeight:CGFloat!
  var leftBoundaryWidth:CGFloat!
  var middleBoundaryWidth:CGFloat!
  var leftSquareCenterPointX:CGFloat!
  var middleSquareCenterPointX:CGFloat!
  var rightSquareCenterPointX:CGFloat!
  var squareCenterPointY:CGFloat!
  
  @IBAction func releaseNextSquare(sender: UIButton) {
    var newView = UIView(frame: CGRectMake(0.0, 0.0, sizeOfSquare.width, sizeOfSquare.height))
    
    var randomColorIndex = Int(arc4random()%5)
    newView.backgroundColor = colors[randomColorIndex]
    
    var randomCenterPoint = Int(arc4random()%3)
    newView.center = centerPoint[randomCenterPoint]
    
    squareViews.append(newView)
    self.view.addSubview(newView)
    
    animator = UIDynamicAnimator(referenceView: self.view)
    
    // create gravity
    var gravity = UIGravityBehavior(items: squareViews)
    animator.addBehavior(gravity)
    
    // create collision detection
    var collision = UICollisionBehavior(items: self.squareViews)
    
    // set collision boundaries
    collision.addBoundaryWithIdentifier("leftBoundary", fromPoint:CGPointMake(0.0, leftBoundaryHeight), toPoint: CGPointMake(leftBoundaryWidth, leftBoundaryHeight))
    collision.addBoundaryWithIdentifier("middleBoundary", fromPoint:CGPointMake(view.bounds.size.width/3, middleBoundaryHeight), toPoint: CGPointMake(middleBoundaryWidth, middleBoundaryHeight))
    collision.addBoundaryWithIdentifier("rightBoundary", fromPoint:CGPointMake(middleBoundaryWidth, rightBoundaryHeight), toPoint: CGPointMake(view.bounds.size.width, rightBoundaryHeight))
    
    collision.collisionMode = UICollisionBehaviorMode.Everything
    animator.addBehavior(collision)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.setBoundaryValues()
    
    // Create the colors array
    colors = [UIColor.redColor(), UIColor.blueColor(), UIColor.greenColor(), UIColor.purpleColor(), UIColor.grayColor()]
    
    // Create the centerpoint of our squares
    var leftCenterPoint = CGPointMake(leftSquareCenterPointX, squareCenterPointY)
    var middleCenterPoint = CGPointMake(middleSquareCenterPointX, squareCenterPointY)
    var rightCenterPoint = CGPointMake(rightSquareCenterPointX, squareCenterPointY)
    centerPoint = [leftCenterPoint,middleCenterPoint,rightCenterPoint]
    
    // set the size of our squares
    sizeOfSquare = CGSizeMake(50.0, 50.0)
  }
  
  func setBoundaryValues() {
    leftBoundaryHeight = view.bounds.size.height - 100.0
    middleBoundaryHeight = view.bounds.size.height - 150.0
    rightBoundaryHeight = view.bounds.size.height - 100.0
    leftBoundaryWidth = view.bounds.size.width/3
    middleBoundaryWidth = view.bounds.size.width * 0.67
    leftSquareCenterPointX = view.bounds.size.width/6
    middleSquareCenterPointX = view.bounds.size.width/2
    rightSquareCenterPointX = view.bounds.size.width * 0.84
    squareCenterPointY = view.bounds.size.height - 400
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

