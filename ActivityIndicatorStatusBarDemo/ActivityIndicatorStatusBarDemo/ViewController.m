//
//  ViewController.m
//  ActivityIndicatorStatusBarDemo
//
//  Created by Arthur Knopper on 15-05-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)startActivity:(id)sender;
- (IBAction)stopActivity:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startActivity:(id)sender {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (IBAction)stopActivity:(id)sender {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}
@end
