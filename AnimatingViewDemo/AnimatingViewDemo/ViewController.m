//
//  ViewController.m
//  AnimatingViewDemo
//
//  Created by Arthur Knopper on 3/16/13.
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
	
    UIImage *image = [UIImage imageNamed:@"ios6.jpeg"];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    
    self.imageView.frame = CGRectMake(0, 0, 100.0f, 100.0f);
    
    [self.view addSubview:self.imageView];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3.0f];
    [UIView setAnimationDelegate:self];
    
    self.imageView.frame = CGRectMake(200.0f, 200.0f, 100.0f, 100.0f);
    
    [UIView commitAnimations];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
