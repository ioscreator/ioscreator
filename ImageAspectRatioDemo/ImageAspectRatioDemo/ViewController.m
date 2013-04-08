//
//  ViewController.m
//  ImageAspectRatioDemo
//
//  Created by Arthur Knopper on 4/8/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"can_of_cola.png"];
    
    self.imageView = [[UIImageView alloc] initWithImage:image];
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.imageView];
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint
                                      constraintWithItem:self.imageView
                                      attribute:NSLayoutAttributeCenterX
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:self.view
                                      attribute:NSLayoutAttributeCenterX
                                      multiplier:1.0f
                                      constant:0.0f];
    
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint
                  constraintWithItem:self.imageView
                  attribute:NSLayoutAttributeCenterY
                  relatedBy:NSLayoutRelationEqual
                  toItem:self.view
                  attribute:NSLayoutAttributeCenterY
                  multiplier:1.0f
                  constant:0.0f];
    
	[self.view addConstraint:constraint];
    
    
    
    constraint = [NSLayoutConstraint
                  constraintWithItem:self.imageView
                  attribute:NSLayoutAttributeHeight
                  relatedBy:NSLayoutRelationEqual
                  toItem:self.view
                  attribute:NSLayoutAttributeHeight
                  multiplier:1.0f
                  constant:0.0f];
    
	[self.view addConstraint:constraint];
    
    
    constraint = [NSLayoutConstraint
                  constraintWithItem:self.imageView
                  attribute:NSLayoutAttributeHeight
                  relatedBy:NSLayoutRelationEqual
                  toItem:self.imageView
                  attribute:NSLayoutAttributeWidth
                  multiplier:1.66f
                  constant:0.0f];
    
	[self.imageView addConstraint:constraint];
	
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
