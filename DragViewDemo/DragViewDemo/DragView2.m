//
//  DragView2.m
//  DragViewDemo
//
//  Created by Arthur Knopper on 1/13/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "DragView2.h"

@implementation DragView2

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(detectPan:)];
        self.gestureRecognizers = @[panRecognizer];
        
        // randomize view color
        CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
        CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
        CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
        UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
        
        self.backgroundColor = color;
    }
    return self;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Promote the touched view
    [self.superview bringSubviewToFront:self];
    
    // Remember original location
    lastLocation = self.center;
}

- (void) detectPan:(UIPanGestureRecognizer *) uiPanGestureRecognizer
{
    CGPoint translation = [uiPanGestureRecognizer translationInView:self.superview];
    self.center = CGPointMake(lastLocation.x + translation.x,
                              lastLocation.y + translation.y);
}

@end
