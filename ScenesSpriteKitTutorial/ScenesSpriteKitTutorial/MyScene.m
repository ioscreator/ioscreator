//
//  MyScene.m
//  ScenesSpriteKitTutorial
//
//  Created by Arthur Knopper on 31-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "MyScene.h"
#import "SampleScene.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        SKSpriteNode *button = [SKSpriteNode spriteNodeWithImageNamed:@"nextButton.png"];
        
        button.position = CGPointMake(CGRectGetMidX(self.frame),
                                      CGRectGetMidY(self.frame));
        button.name = @"nextButton";
        
        [self addChild:button];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    // if next button touched, start transition to next scene
    if ([node.name isEqualToString:@"nextButton"]) {
        NSLog(@"nextButton pressed");
        SKScene *sampleScene = [[SampleScene alloc] initWithSize:self.size];
        SKTransition *transition = [SKTransition flipVerticalWithDuration:0.5];
        [self.view presentScene:sampleScene transition:transition];
    }
}


@end
