//
//  ViewController.m
//  iOS7SegmentedControlTutorial
//
//  Created by Arthur Knopper on 25-02-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

- (IBAction)indexChanged:(UISegmentedControl *)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.textLabel.text = @"First segment selected";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)indexChanged:(UISegmentedControl *)sender
{
    switch (self.segmentedControl.selectedSegmentIndex)
    {
        case 0:
            self.textLabel.text = @"First segment selected";
            break;
        case 1:
            self.textLabel.text = @"Second segment selected";
            break;
        default: 
            break; 
    }
}
@end
