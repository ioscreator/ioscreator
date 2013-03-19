//
//  iOSSecondViewController.m
//  NavigationControllerDemo
//
//  Created by Arthur Knopper on 279//12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "iOSSecondViewController.h"

@interface iOSSecondViewController ()

@end

@implementation iOSSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"Second Controller";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

@end
