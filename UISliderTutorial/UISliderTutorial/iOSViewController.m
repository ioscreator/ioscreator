//
//  iOSViewController.m
//  UISliderTutorial
//
//  Created by Arthur Knopper on 288//12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "iOSViewController.h"

@interface iOSViewController ()

@end

@implementation iOSViewController
@synthesize mySlider;
@synthesize myLabel;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidUnload
{
    [self setMySlider:nil];
    [self setMyLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    myLabel.text =  [NSString stringWithFormat:@"%d", (int)sender.value];
}
@end
