//
//  GameScene.swift
//  SpriteKitPhysicsTutorial
//
//  Created by Arthur Knopper on 21/10/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        self.backgroundColor = UIColor.whiteColor()
        
        scene!.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        
        self.runAction(
            SKAction.repeatAction(SKAction.sequence([
                SKAction.runBlock(self.createBall),
                SKAction.waitForDuration(0.05
                )]),
                count: 200))
    }
    
    
    func createBall() {
        let ball: SKSpriteNode = SKSpriteNode(imageNamed: "ball")
        
        ball.position = CGPoint(
            x: CGFloat(Int(arc4random()) % Int(self.size.width)),
            y: self.size.height - ball.size.height)
        
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width/2)
        self.addChild(ball)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
