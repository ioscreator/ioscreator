//
//  ViewController.m
//  CopyTextDemo
//
//  Created by Arthur Knopper on 4/14/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *fromTextField;
@property (nonatomic, weak) IBOutlet UITextField *toTextField;


- (IBAction)copyText:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.fromTextField.delegate = self;
    self.toTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}


- (IBAction)copyText:(id)sender {
    NSString *copyString = self.fromTextField.text;
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    pasteBoard.string = copyString;
}

@end
