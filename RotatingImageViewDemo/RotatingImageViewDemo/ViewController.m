//
//  ViewController.m
//  RotatingImageViewDemo
//
//  Created by Arthur Knopper on 2/25/13.
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
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"clock.png"];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    
    
    [self.view addSubview:self.imageView];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    self.imageView.center = self.view.center;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:4.0f];
    [UIView setAnimationDelegate:self];
    
    
    self.imageView.transform = CGAffineTransformMakeRotation((120.0f * M_PI) / 180.0f);
    
    //self.imageView.frame = CGRectMake(200.0f, 200.0f, 100.0f, 100.0f);
    
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end










































































