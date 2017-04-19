//
//  ViewController.swift
//  IOS10CollisionDetectionTutorial
//
//  Created by Arthur Knopper on 18/04/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
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
    
    @IBAction func releaseSquare(_ sender: Any) {
        let newView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: sizeOfSquare.width, height: sizeOfSquare.height))
        
        let randomColorIndex = Int(arc4random()%5)
        newView.backgroundColor = colors[randomColorIndex]
        
        let randomCenterPoint = Int(arc4random()%3)
        newView.center = centerPoint[randomCenterPoint]
        
        squareViews.append(newView)
        view.addSubview(newView)
        
        animator = UIDynamicAnimator(referenceView: view)
        
        // create gravity
        let gravity = UIGravityBehavior(items: squareViews)
        animator.addBehavior(gravity)
        
        // create collision detection
        let collision = UICollisionBehavior(items: squareViews)
        
        // set collision boundaries
        collision.addBoundary(withIdentifier: "leftBoundary" as NSCopying, from: CGPoint(x: 0.0,y: leftBoundaryHeight), to: CGPoint(x: leftBoundaryWidth, y: leftBoundaryHeight))
        collision.addBoundary(withIdentifier: "middleBoundary" as NSCopying, from: CGPoint(x: view.bounds.size.width/3,y: middleBoundaryHeight), to: CGPoint(x: middleBoundaryWidth, y: middleBoundaryHeight))
        collision.addBoundary(withIdentifier: "rightBoundary" as NSCopying, from: CGPoint(x: middleBoundaryWidth,y: rightBoundaryHeight), to: CGPoint(x: view.bounds.size.width, y: rightBoundaryHeight))
        
        collision.collisionMode = .everything
        animator.addBehavior(collision)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBoundaryValues()
            
        // Create the colors array
        colors = [UIColor.red, UIColor.blue, UIColor.green, UIColor.purple, UIColor.gray]
            
        // Create the centerpoint of our squares
        let leftCenterPoint = CGPoint(x: leftSquareCenterPointX, y: squareCenterPointY)
        let middleCenterPoint = CGPoint(x: middleSquareCenterPointX, y: squareCenterPointY)
        let rightCenterPoint = CGPoint(x:rightSquareCenterPointX, y: squareCenterPointY)
        centerPoint = [leftCenterPoint,middleCenterPoint,rightCenterPoint]
            
        // set the size of our squares
        sizeOfSquare = CGSize(width: 50.0, height: 50.0)
        
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

