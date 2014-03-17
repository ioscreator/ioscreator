//
//  MyScene.m
//  ScrollingSpriteKitTutorial
//
//  Created by Arthur Knopper on 13-03-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//



#import "MyScene.h"

@interface MyScene ()

@property (nonatomic,strong) ScrollingBackground *scrollingBackground;

@end

@implementation MyScene


- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
		NSString *imageName = @"clouds.jpg";
		self.scaleMode = SKSceneScaleModeFill;
		
		ScrollingBackground *scrollingBackground = [[ScrollingBackground alloc] initWithBackground:imageName size:size speed:2.0];
		self.scrollingBackground = scrollingBackground;
		
		[self addChild:scrollingBackground];
    }
    return self;
}

- (void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
	[self.scrollingBackground update:currentTime];
}

@end
