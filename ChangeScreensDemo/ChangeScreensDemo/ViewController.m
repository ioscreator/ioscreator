//
//  ViewController.m
//  ChangeScreensDemo
//
//  Created by Arthur Knopper on 22-07-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *screenNumber;
@property (strong, nonatomic) IBOutlet UIPageControl *pageController;


- (IBAction)changeScreen:(id)sender;


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

- (IBAction)changeScreen:(id)sender {
    self.screenNumber.text = [NSString stringWithFormat:@"%i", ([self.pageController currentPage]+1)];
}
@end
