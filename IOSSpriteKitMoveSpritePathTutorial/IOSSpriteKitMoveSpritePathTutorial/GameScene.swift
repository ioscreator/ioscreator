//
//  GameScene.swift
//  IOSSpriteKitMoveSpritePathTutorial
//
//  Created by Arthur Knopper on 15/11/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        // 1
        let logo = SKSpriteNode(imageNamed:"SwiftLogo.png")
        
        logo.position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        addChild(logo)
        
        // 2
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 50, y: 100))
        let followLine = SKAction.follow(path, speed: 3.0)
        
        // 3
        let reversedLine = followLine.reversed()
        
        // 4
        let square = UIBezierPath(rect: CGRect(x: 0,y: 0, width: 100, height: 100))
        let followSquare = SKAction.follow(square.cgPath, asOffset: true, orientToPath: false, duration: 5.0)
        
        // 5
        let circle = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 100, height: 100), cornerRadius: 100)
        let followCircle = SKAction.follow(circle.cgPath, asOffset: true, orientToPath: false, duration: 5.0)
        
        // 6
        logo.run(SKAction.sequence([followLine,reversedLine,followSquare,followCircle]))
    }
    
   
}
