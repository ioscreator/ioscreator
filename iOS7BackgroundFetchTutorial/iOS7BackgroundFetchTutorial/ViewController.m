//
//  ViewController.m
//  iOS7BackgroundFetchTutorial
//
//  Created by Arthur Knopper on 2/3/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UILabel *timeLabel;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.timeLabel.text = @"12:00:00";
}

- (void)alterTime
{
    NSDate *now = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss"];
    NSString *timeString = [dateFormatter stringFromDate:now];
    self.timeLabel.text = timeString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
