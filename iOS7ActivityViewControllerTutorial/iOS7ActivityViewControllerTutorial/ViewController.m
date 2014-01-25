//
//  ViewController.m
//  iOS7ActivityViewControllerTutorial
//
//  Created by Arthur Knopper on 23-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (strong, nonatomic) UIActivityViewController *activityViewController;

- (IBAction)shareText:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.textField.delegate = self;
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareText:(UIButton *)sender {
    self.activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[self.textField.text] applicationActivities:nil];
    
    [self presentViewController:self.activityViewController animated:YES completion:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end
