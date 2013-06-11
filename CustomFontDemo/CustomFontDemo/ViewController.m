//
//  ViewController.m
//  CustomFontDemo
//
//  Created by Arthur Knopper on 11-06-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UILabel *textLabel;

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self.textLabel setFont: [UIFont fontWithName: @"WakingUp" size:48]];
    self.textLabel.text = @"Custom Font Demo";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
