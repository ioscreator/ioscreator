//
//  MyScene.m
//  SpriteActionsTutorial
//
//  Created by Arthur Knopper on 09-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"owl"];
        sprite.position = CGPointMake(self.size.width/2, self.size.height/2);
        
        [self addChild:sprite];
        
        //SKAction *moveBottomLeft = [SKAction moveTo:CGPointMake(100, 100) duration:2.0];
        
        SKAction *moveRight = [SKAction moveByX:50 y:0 duration:1.0];
        SKAction *moveBottom = [SKAction moveByX:0 y:-100 duration:3.0];
        
        //SKAction *sequence = [SKAction sequence:@[moveRight, moveBottom]];
        
       SKAction *reversedMoveBottom=[moveBottom reversedAction];
        SKAction *sequence = [SKAction sequence:@[moveRight, moveBottom, reversedMoveBottom]];
        
        //[sprite runAction:moveBottomLeft];
        //[sprite runAction:moveRight];
        //[sprite runAction:sequence];
        
        SKAction *endlessAction = [SKAction repeatActionForever:sequence];
        [sprite runAction:endlessAction];
    }
    
    return self;
}

/*-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // Called when a touch begins
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}*/

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
