//
//  ViewController.m
//  iOS7ActivityIndicatorTutorial
//
//  Created by Arthur Knopper on 11-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;

- (IBAction)startSpinning:(UIButton *)sender;
- (IBAction)stopSpinning:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startSpinning:(UIButton *)sender {
    [self.activityIndicatorView startAnimating];
}

- (IBAction)stopSpinning:(UIButton *)sender {
    [self.activityIndicatorView stopAnimating];
}

@end
