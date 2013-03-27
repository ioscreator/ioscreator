//
//  ViewController.m
//  ScalingViewsDemo
//
//  Created by Arthur Knopper on 3/25/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (nonatomic, strong) IBOutlet UISlider *scaleSlider;
@property (nonatomic, strong) IBOutlet UIImageView *scaleView;

- (IBAction)scaleImage:(UISlider *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //set slider values
    self.scaleSlider.minimumValue = 0.5;
    self.scaleSlider.maximumValue = 1.5;
    self.scaleSlider.value = 1.0;
    
    // load image
    UIImage *image = [UIImage imageNamed:@"star.png"];
    self.scaleView.image = image;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)scaleImage:(UISlider *)sender {
    self.scaleView.transform = CGAffineTransformMakeScale(sender.value, sender.value);
}
@end
