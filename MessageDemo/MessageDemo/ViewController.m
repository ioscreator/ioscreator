//
//  ViewController.m
//  MessageDemo
//
//  Created by Arthur Knopper on 4/10/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import <MessageUI/MessageUI.h>
#import "ViewController.h"


@interface ViewController () <MFMessageComposeViewControllerDelegate>

- (IBAction)sendMessage:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    switch (result)
    {
        case MessageComposeResultCancelled:
            NSLog(@"Message was cancelled");
            [self dismissViewControllerAnimated:YES completion:NULL];
            break;
        case MessageComposeResultFailed:
            NSLog(@"Message failed");
            [self dismissViewControllerAnimated:YES completion:NULL];
            break;
        case MessageComposeResultSent:
            NSLog(@"Message was sent");
            [self dismissViewControllerAnimated:YES completion:NULL];
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendMessage:(id)sender
{
    MFMessageComposeViewController *messageVC = [[MFMessageComposeViewController alloc] init];
    
    messageVC.body = @"Test";
    messageVC.recipients = @[@"+31646204287"];
    messageVC.messageComposeDelegate = self;
    [self presentViewController:messageVC animated:NO completion:NULL];
}

@end
