//
//  myView.m
//  iOS7CollisionDetectionTutorial
//
//  Created by Arthur Knopper on 25-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "myView.h"

@implementation myView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    [self drawLineFromPoint:0 toPoint:self.bounds.size.width/3 pointY:self.bounds.size.height - 100.0f];
    [self drawLineFromPoint:self.bounds.size.width/3 toPoint:self.bounds.size.width*0.67 pointY:self.bounds.size.height - 150.0f];
    [self drawLineFromPoint:self.bounds.size.width*0.67 toPoint:self.bounds.size.width pointY:self.bounds.size.height - 100.0f];
}

- (void)drawLineFromPoint:(CGFloat)fromX toPoint:(CGFloat)toX pointY:(CGFloat)y
{
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(currentContext,5.0f);
    CGContextMoveToPoint(currentContext, fromX, y);
    CGContextAddLineToPoint(currentContext, toX, y);
    CGContextStrokePath(currentContext);
}


@end
