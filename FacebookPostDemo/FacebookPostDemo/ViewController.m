//
//  ViewController.m
//  FacebookPostDemo
//
//  Created by Arthur Knopper on 4/18/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import <Social/Social.h>
#import "ViewController.h"

@interface ViewController ()

- (IBAction)postToFacebook:(id)sender;

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

- (IBAction)postToFacebook:(id)sender
{
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller setInitialText:@"Testing Posting to Facebook"];
        [self presentViewController:controller animated:YES completion:nil];
    }
}


@end


