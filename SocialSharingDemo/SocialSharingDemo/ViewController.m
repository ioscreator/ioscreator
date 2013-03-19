//
//  ViewController.m
//  SocialSharingDemo
//
//  Created by Arthur Knopper on 13/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 

@property (nonatomic, strong) IBOutlet UITextField *textField;
@property (nonatomic, strong) IBOutlet UIButton *shareButton;

@property (nonatomic, strong) UIActivityViewController *activityViewController;

- (IBAction)shareButtonPressed:(id)sender;

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

- (IBAction)shareButtonPressed:(id)sender
{
    self.activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[self.textField.text] applicationActivities:nil];
    [self presentViewController:self.activityViewController animated:YES completion:nil];
}

@end
