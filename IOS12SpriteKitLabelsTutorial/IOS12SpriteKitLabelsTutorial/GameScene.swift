//
//  GameScene.swift
//  IOS12SpriteKitLabelsTutorial
//
//  Created by Arthur Knopper on 21/09/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var deltaPoint = CGPoint(x: 0, y: 0)
    var myLabel:SKLabelNode!
    
    override func didMove(to view: SKView) {
        let bgImage = SKSpriteNode(imageNamed: "wallpaper.png")
        bgImage.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        bgImage.zPosition = -1
        
        self.addChild(bgImage)
        
        myLabel = SKLabelNode(fontNamed: "Chalkduster")
        myLabel.text = "Drag this label"
        myLabel.fontSize = 30
        myLabel.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        
        self.addChild(myLabel)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let currentLocation = touch.location(in: self)
            let previousLocation = touch.previousLocation(in: self)
            
            deltaPoint = CGPoint(x: currentLocation.x - previousLocation.x, y: currentLocation.y - previousLocation.y)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        deltaPoint = CGPoint(x: 0, y: 0)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        deltaPoint = CGPoint(x: 0, y: 0)
    }
    
    override func update(_ currentTime: TimeInterval) {
        let xPos = myLabel.position.x + deltaPoint.x
        let yPos = myLabel.position.y + deltaPoint.y
        let newPosition = CGPoint(x: xPos, y: yPos)
        myLabel.position = newPosition
        deltaPoint = CGPoint(x: 0, y:0)
    }
}
