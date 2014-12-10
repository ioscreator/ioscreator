//
//  GameScene.swift
//  SpriteKitSwiftAccelerometerTutorial
//
//  Created by Arthur Knopper on 10/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import SpriteKit
import CoreMotion

class GameScene: SKScene {
  var airplane = SKSpriteNode()
  var motionManager = CMMotionManager()
  var destX:CGFloat  = 0.0
  
  override func didMoveToView(view: SKView) {
    /* Setup your scene here */
    
    // 1
    airplane = SKSpriteNode(imageNamed: "Airplane")
    airplane.position = CGPointMake(frame.size.width/2, frame.size.height/2)
    self.addChild(airplane)
    
    
    if motionManager.accelerometerAvailable == true {
      // 2
      motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue(), withHandler:{
        data, error in
        
        var currentX = self.airplane.position.x
        
        // 3
        if data.acceleration.x < 0 {
          self.destX = currentX + CGFloat(data.acceleration.x * 100)
        }
        
        else if data.acceleration.x > 0 {
          self.destX = currentX + CGFloat(data.acceleration.x * 100)
        }
        
      })
        
    }
  }
  
  // 4
  override func update(currentTime: CFTimeInterval) {
    /* Called before each frame is rendered */
    var action = SKAction.moveToX(destX, duration: 1)
    self.airplane.runAction(action)
    }
}
