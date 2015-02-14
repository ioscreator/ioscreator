//
//  GameScene.swift
//  SpriteKitSwiftFollowPathTutorial
//
//  Created by Arthur Knopper on 09/02/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let logo = SKSpriteNode(imageNamed:"SwiftLogo.png")
        
        logo.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2)
        self.addChild(logo)
        
        var path = CGPathCreateMutable()
        CGPathMoveToPoint(path, nil, 0, 0)
        CGPathAddLineToPoint(path, nil, 50, 100)
        var followLine = SKAction.followPath(path, asOffset: true, orientToPath: false, duration: 3.0)
        
        var reversedLine = followLine.reversedAction()
        
        var square = UIBezierPath(rect: CGRectMake(0, 0, 100, 100))
        var followSquare = SKAction.followPath(square.CGPath, asOffset: true, orientToPath: false, duration: 5.0)
        
        var circle = UIBezierPath(roundedRect: CGRectMake(0, 0, 100, 100), cornerRadius: 100)
        var followCircle = SKAction.followPath(circle.CGPath, asOffset: true, orientToPath: false, duration: 5.0)
        
        
        logo.runAction(SKAction.sequence([followLine,reversedLine,followSquare,followCircle]))
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
