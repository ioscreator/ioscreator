//
//  ViewController.m
//  CategoryDemo
//
//  Created by Arthur Knopper on 18-07-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"
#import "UISwitch+CustomSwitch.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UISwitch *mySwitch;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.mySwitch = [UISwitch UISwitchWithTintColor:[UIColor redColor] onTintColor:[UIColor blueColor] thumbTintColor:[UIColor greenColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
