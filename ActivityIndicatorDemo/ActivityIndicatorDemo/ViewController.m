//
//  ViewController.m
//  ActivityIndicatorDemo
//
//  Created by Arthur Knopper on 3/5/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIActivityIndicatorView *activityIndicatorView;



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
	// Do any additional setup after loading the view, typically from a nib.
     CGRect frame = CGRectMake (120.0, 185.0, 80, 80);
    
    self.activityIndicatorView = [[UIActivityIndicatorView alloc] initWithFrame:frame];
    
    [self.view addSubview:self.activityIndicatorView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Start:(id)sender {
    [self.activityIndicatorView startAnimating];
}

- (IBAction)Stop:(id)sender {
    [self.activityIndicatorView stopAnimating];
}

@end




































































