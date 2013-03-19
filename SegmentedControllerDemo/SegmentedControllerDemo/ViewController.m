//
//  ViewController.m
//  SegmentedControllerDemo
//
//  Created by Arthur Knopper on 11/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UILabel *textLabel;
@property (nonatomic,weak) IBOutlet UISegmentedControl *segmentedControl;

-(IBAction) segmentedControlIndexChanged;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.textLabel.text = @"Segment 1 selected.";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) segmentedControlIndexChanged
{
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            self.textLabel.text =@"Segment 1 selected.";
            break;
        case 1:
            self.textLabel.text =@"Segment 2 selected.";
            break;
        default:
            break;
    }
}

@end
