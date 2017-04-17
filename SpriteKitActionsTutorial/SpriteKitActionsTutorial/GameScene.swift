//
//  GameScene.swift
//  SpriteKitActionsTutorial
//
//  Created by Arthur Knopper on 10/04/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let apple = SKSpriteNode(imageNamed: "Apple.png")
        apple.position = CGPoint(x: size.width/2, y: size.height/2)
        
        self.addChild(apple)
        
        /*let moveBottomLeft = SKAction.move(to: CGPoint(x: 100,y: 100), duration:2.0)
        apple.run(moveBottomLeft)*/
        
        let moveRight = SKAction.moveBy(x: 50, y:0, duration:1.0)
        //apple.run(moveRight)
        
        let moveBottom = SKAction.moveBy(x: 0, y:-100, duration:3.0)
        //let sequence = SKAction.sequence([moveRight, moveBottom])
        
        let reversedMoveBottom = moveBottom.reversed()
        let sequence = SKAction.sequence([moveRight, moveBottom, reversedMoveBottom])
        
        //apple.run(sequence)
        
        let endlessAction = SKAction.repeatForever(sequence)
        apple.run(endlessAction)
    }
}
