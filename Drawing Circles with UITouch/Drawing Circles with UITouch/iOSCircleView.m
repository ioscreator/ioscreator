//
//  iOSCircleView.m
//  Drawing Circles with UITouch
//
//  Created by Arthur Knopper on 79//12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "iOSCircleView.h"
#import "iOSCircle.h"

#define MINRADIUS 10
#define MAXRADIUS 30

@implementation iOSCircleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        totalCircles = [[NSMutableArray alloc] init];
        
        // Set background color
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [self drawCircle];
}

- (void)drawCircle
{
    // Get the Graphics Context
    CGContextRef context = UIGraphicsGetCurrentContext();
    // Set the circle outerline-width
    CGContextSetLineWidth(context, 10.0);
    // Set the circle outerline-colour
    [[UIColor redColor] set];
    
    
    // Loop through the circles and Draw these Circles to the view
    for (iOSCircle *circle in totalCircles) {
        // Create Circle
        CGContextAddArc(context, circle.circleCenter.x, circle.circleCenter.y, circle.circleRadius, 0.0, M_PI * 2.0, YES);
        // Draw 
        CGContextStrokePath(context);
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // loop through the touches
    for (UITouch *touch in touches)
    {
        // Get location of Touch
        CGPoint location = [touch locationInView:self];
        
        // Create a new iOSCircle Object
        iOSCircle *newCircle = [[iOSCircle alloc] init];
        // Set the Center of the Circle
        newCircle.circleCenter = location;
        // Set a random Circle Radius 
        newCircle.circleRadius = MINRADIUS + (arc4random() % MAXRADIUS);
        
        // Add the Circle Object to the Array
        [totalCircles addObject:newCircle];
        
        // update the view
        [self setNeedsDisplay];
    }
}




@end
