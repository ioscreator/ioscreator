//
//  ViewController.m
//  iOS7LongPressGestureTutorial
//
//  Created by Arthur Knopper on 2/13/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UILongPressGestureRecognizer *lpgr;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.lpgr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(handleLongPressGestures:)];
    self.lpgr.minimumPressDuration = 1.0f;
    self.lpgr.allowableMovement = 100.0f;
    
    [self.view addGestureRecognizer:self.lpgr];
}

- (void)handleLongPressGestures:(UILongPressGestureRecognizer *)sender
{
    if ([sender isEqual:self.lpgr]) {
        if (sender.state == UIGestureRecognizerStateBegan)
        {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Gestures" message:@"Long Gesture Detected" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
           [alertView show];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
