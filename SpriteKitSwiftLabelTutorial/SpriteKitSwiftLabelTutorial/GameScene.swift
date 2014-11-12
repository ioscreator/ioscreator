//
//  GameScene.swift
//  SpriteKitSwiftLabelTutorial
//
//  Created by Arthur Knopper on 11/11/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var deltaPoint = CGPointZero
    var myLabel:SKLabelNode!
  
    override func didMoveToView(view: SKView) {
      var bgImage = SKSpriteNode(imageNamed: "wallpaper.png")
      bgImage.position = CGPointMake(self.size.width/2, self.size.height/2)
    
      self.addChild(bgImage)
    
      myLabel = SKLabelNode(fontNamed: "Arial")
      myLabel.text = "Drag this label"
      myLabel.fontSize = 20
      myLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
    
      self.addChild(myLabel)
    }
  
    override func touchesMoved(touches: NSSet, withEvent: UIEvent) {
      var currentPoint:CGPoint! = touches.anyObject()?.locationInNode(self)
      var previousPoint:CGPoint! = touches.anyObject()?.previousLocationInNode(self)
      deltaPoint = CGPointMake(currentPoint.x - previousPoint.x, currentPoint.y - previousPoint.y)
    }
    
    override func touchesEnded(touches: NSSet, withEvent: UIEvent) {
      deltaPoint = CGPointZero
    }
    
    override func touchesCancelled(touches: NSSet!, withEvent: UIEvent!) {
      deltaPoint = CGPointZero
    }
    
    
    override func update(currentTime: CFTimeInterval) {
      var newPoint = CGPointMake(self.myLabel.position.x + self.deltaPoint.x, self.myLabel.position.y + self.deltaPoint.y)
      myLabel.position = newPoint
      deltaPoint = CGPointZero
    }
}

