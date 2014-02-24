//
//  MyScene.m
//  LabelSPriteKitTutorial
//
//  Created by Arthur Knopper on 23-02-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        SKSpriteNode *bgImage = [SKSpriteNode spriteNodeWithImageNamed:@"background"];
        bgImage.position = CGPointMake(self.size.width/2, self.size.height/2);
        [self addChild:bgImage];

        self.myLabel = [SKLabelNode labelNodeWithFontNamed:@"Arial"];
        self.myLabel.text = @"Drag this label";
        self.myLabel.fontSize = 20;
        self.myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
        [self addChild:self.myLabel];
    }
    return self;
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint currentPoint = [[touches anyObject] locationInNode:self];
    CGPoint previousPoint = [[touches anyObject] previousLocationInNode:self];
    self.deltaPoint = CGPointMake(currentPoint.x - previousPoint.x, currentPoint.y - previousPoint.y);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.deltaPoint = CGPointZero;
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.deltaPoint = CGPointZero;
}

-(void)update:(CFTimeInterval)currentTime {
    CGPoint newPoint = CGPointMake(self.myLabel.position.x + self.deltaPoint.x, self.myLabel.position.y + self.deltaPoint.y);
        self.myLabel.position = newPoint;
    self.deltaPoint = CGPointZero;
}

@end
