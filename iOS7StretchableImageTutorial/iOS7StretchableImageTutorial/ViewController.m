//
//  ViewController.m
//  iOS7StretchableImageTutorial
//
//  Created by Arthur Knopper on 3/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImageVIew;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIImage *roundedImage = [UIImage imageNamed:@"roundedimage"];
    roundedImage = [roundedImage resizableImageWithCapInsets:UIEdgeInsetsMake(0.0, 5.0, 0.0, 5.0)];
    self.myImageVIew.image = roundedImage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
