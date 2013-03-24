//
//  iOSAppDelegate.h
//  CameraApp
//
//  Created by Arthur Knopper on 2/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iOSViewController;

@interface iOSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) iOSViewController *viewController;

@end
