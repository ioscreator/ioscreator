//
//  ViewController.m
//  ShadowButtonDemo
//
//  Created by Arthur Knopper on 03-06-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property (nonatomic,strong) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.button.layer.shadowColor = [UIColor blackColor].CGColor;
    self.button.layer.shadowOffset = CGSizeMake(15.0f,15.0f);
    self.button.layer.masksToBounds = NO;
    self.button.layer.shadowRadius = 5.0f;
                                     
    self.button.layer.shadowOpacity = 1.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
