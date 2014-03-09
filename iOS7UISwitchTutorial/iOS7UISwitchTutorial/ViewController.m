//
//  ViewController.m
//  iOS7UISwitchTutorial
//
//  Created by Arthur Knopper on 07-03-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

- (IBAction)buttonClicked:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[self.mySwitch addTarget:self
					  action:@selector(stateChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonClicked:(UIButton *)sender {
	if ([self.mySwitch isOn]) {
		self.myTextField.text = @"The Switch is Off";
		[self.mySwitch setOn:NO animated:YES];
	} else {
		self.myTextField.text = @"The Switch is On";
		[self.mySwitch setOn:YES animated:YES];
	}
}

- (void)stateChanged:(UISwitch *)switchState
{
	if ([switchState isOn]) {
		self.myTextField.text = @"The Switch is On";
	} else {
		self.myTextField.text = @"The Switch is Off";
	}
}

@end
