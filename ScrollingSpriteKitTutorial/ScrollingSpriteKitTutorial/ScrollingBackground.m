//
//  ScrollingBackground.m
//  ScrollingSpriteKitTutorial
//
//  Created by Arthur Knopper on 16-03-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ScrollingBackground.h"

@interface ScrollingBackground ()

@property (nonatomic, strong) SKSpriteNode *background;
@property (nonatomic, strong) SKSpriteNode *clonedBackground;
@property (nonatomic) CGFloat currentSpeed;

@end

@implementation ScrollingBackground

- (id)initWithBackground:(NSString *)background
					size:(CGSize)size
				   speed:(CGFloat)speed
{
	self = [super init];
	if (self)
	{
		// load background image
		self.background = [[SKSpriteNode alloc] initWithImageNamed:background];
		
		// position background
		self.position = CGPointMake(size.width / 2, size.height / 2);
		
		// speed
		self.currentSpeed = speed;
		
		// create duplicate background and insert location
		SKSpriteNode *node = self.background;
		node.position = CGPointMake(0, self.size.height);
		
		self.clonedBackground = [node copy];
		CGFloat clonedPosX = node.position.x;
		CGFloat clonedPosY = node.position.y;
		clonedPosX = -node.size.width;
		
		self.clonedBackground.position = CGPointMake(clonedPosX, clonedPosY);
		
		[self addChild:node];
		[self addChild:self.clonedBackground];
	}
	
	return self;
}

- (void)update:(NSTimeInterval)currentTime
{
	CGFloat speed = self.currentSpeed;
	SKSpriteNode *bg = self.background;
	SKSpriteNode *cBg = self.clonedBackground;
	
	CGFloat newBgX = bg.position.x, newBgY = bg.position.y,
	newCbgX = cBg.position.x, newCbgY = cBg.position.y;
	
	newBgX += speed;
	newCbgX += speed;
	if (newBgX >= bg.size.width) newBgX = newCbgX - cBg.size.width;
	if (newCbgX >= cBg.size.width) newCbgX =  newBgX - bg.size.width;
	bg.position = CGPointMake(newBgX, newBgY);
	cBg.position = CGPointMake(newCbgX, newCbgY);
}

@end
