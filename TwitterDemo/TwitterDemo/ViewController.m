//
//  ViewController.m
//  TwitterDemo
//
//  Created by Arthur Knopper on 22/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIImagePickerController *pickerController;
@property (nonatomic, strong) IBOutlet UIImageView *imageView;


- (IBAction)tweetButtonPressed:(id)sender;
- (IBAction)chooseImagePressed:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tweetButtonPressed:(id)sender
{
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"Look at this nice picture!"];
        
        [tweetSheet addImage:self.imageView.image];
        
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Error"
                                  message:@"please setup Twitter"
                                  delegate:self
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
    }
}

- (IBAction)chooseImagePressed:(id)sender
{
    self.pickerController = [[UIImagePickerController alloc] init];
    
    self.pickerController.delegate = self;
    self.pickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:self.pickerController animated:YES completion:nil];
}

#pragma mark 

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info;
{
    self.imageView.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end