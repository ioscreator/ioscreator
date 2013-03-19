//
//  ViewController.m
//  ViewWebsite
//
//  Created by Arthur Knopper on 6/24/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSString *urlString = @"http://ioscreator.com";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    [NSURLConnection sendAsynchronousRequest:request queue:queue
                     completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
            if ([data length] > 0 && error == nil) [myWebView loadRequest:request];
            else if (error != nil) NSLog(@"Error: %@", error);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
