//
//  iOSCircleView.h
//  Drawing Circles with UITouch
//
//  Created by Arthur Knopper on 79//12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iOSCircleView : UIView
{
    NSMutableArray *totalCircles;
}

- (void)drawCircle;

@end
