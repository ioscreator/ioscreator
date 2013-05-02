//
//  ViewController.m
//  CenteringViewsDemo
//
//  Created by Arthur Knopper on 02-05-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *centerButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.centerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.centerButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.centerButton setTitle:@"Center" forState:UIControlStateNormal];
    [self.view addSubview:self.centerButton];
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint
                                      constraintWithItem:self.centerButton
                                      attribute:NSLayoutAttributeCenterX
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:self.view
                                      attribute:NSLayoutAttributeCenterX
                                      multiplier:1.0f
                                      constant:0.0f];
    
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint
                  constraintWithItem:self.centerButton
                  attribute:NSLayoutAttributeCenterY
                  relatedBy:NSLayoutRelationEqual
                  toItem:self.view
                  attribute:NSLayoutAttributeCenterY
                  multiplier:1.0f
                  constant:0.0f];
    
    [self.view addConstraint:constraint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
