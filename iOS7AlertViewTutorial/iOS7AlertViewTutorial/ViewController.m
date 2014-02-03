//
//  ViewController.m
//  iOS7AlertViewTutorial
//
//  Created by Arthur Knopper on 03-02-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)showAlert:(UIButton *)sender;


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

- (IBAction)showAlert:(UIButton *)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert View Tutorial" message:@"Button is clicked." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alertView show];
}
@end
