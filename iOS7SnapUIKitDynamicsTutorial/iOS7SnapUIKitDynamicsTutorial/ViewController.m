//
//  ViewController.m
//  iOS7SnapUIKitDynamicsTutorial
//
//  Created by Arthur Knopper on 3/3/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UISnapBehavior *snapBehaviour;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Create Tap Gesture Recognizer
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(userHasTapped:)];
    [self.view addGestureRecognizer:tap];
    
    // Create the Dynamic Animator
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
}

- (void)userHasTapped:(UITapGestureRecognizer *)tap
{
    // Get the angle between center of the view and snap point
    CGPoint touchPoint = [tap locationInView:self.view];
    if (self.snapBehaviour != nil) {
        [self.animator removeBehavior:self.snapBehaviour];
    }
    
    self.snapBehaviour = [[UISnapBehavior alloc] initWithItem:self.myImageView snapToPoint:touchPoint];
    self.snapBehaviour.damping = 0.3f;
    [self.animator addBehavior:self.snapBehaviour];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
