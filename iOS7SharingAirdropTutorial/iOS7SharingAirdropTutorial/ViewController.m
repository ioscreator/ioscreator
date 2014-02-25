//
//  ViewController.m
//  iOS7SharingAirdropTutorial
//
//  Created by Arthur Knopper on 25-02-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray *activityItems;

- (IBAction)share:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSString *shareString = @"This is my Development Machine.";
    UIImage *shareImage = [UIImage imageNamed:@"imac.jpeg"];
    
    self.activityItems = @[shareString,shareImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)share:(UIButton *)sender {
    UIActivityViewController *avController = [[UIActivityViewController alloc] initWithActivityItems:self.activityItems applicationActivities:nil];
    
    // Exclude all activities except AirDrop.
    NSArray *excludedActivities = @[UIActivityTypePostToTwitter, UIActivityTypePostToFacebook,
                                    UIActivityTypePostToWeibo,
                                    UIActivityTypeMessage, UIActivityTypeMail,
                                    UIActivityTypePrint, UIActivityTypeCopyToPasteboard,
                                    UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll,
                                    UIActivityTypeAddToReadingList, UIActivityTypePostToFlickr,
                                    UIActivityTypePostToVimeo, UIActivityTypePostToTencentWeibo];
    avController.excludedActivityTypes = excludedActivities;
    
    [self presentViewController:avController animated:YES completion:nil];
}

@end
