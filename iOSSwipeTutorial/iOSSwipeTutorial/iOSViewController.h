//
//  iOSViewController.h
//  iOSSwipeTutorial
//
//  Created by Arthur Knopper on 209//12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iOSViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *swipeLabel;
@property (nonatomic, strong) UISwipeGestureRecognizer *leftSwipeGestureRecognizer;
@property (nonatomic, strong) UISwipeGestureRecognizer *rightSwipeGestureRecognizer;

@end
