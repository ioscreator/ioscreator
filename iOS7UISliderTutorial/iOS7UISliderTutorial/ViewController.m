//
//  ViewController.m
//  iOS7UISliderTutorial
//
//  Created by Arthur Knopper on 4/17/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)sliderValueChanged:(UISlider *)sender;

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

- (IBAction)sliderValueChanged:(UISlider *)sender {
    self.myLabel.text =  [NSString stringWithFormat:@"%d", (int)sender.value];
}

@end
