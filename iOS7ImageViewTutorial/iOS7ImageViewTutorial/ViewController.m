//
//  ViewController.m
//  iOS7ImageViewTutorial
//
//  Created by Arthur Knopper on 08-02-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) BOOL imageIsHighlighted;
@property (nonatomic, strong) NSArray *images;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.images = @[[UIImage imageNamed:@"blackcircle.png"], [UIImage imageNamed:@"pinkcircle.png"],
                    [UIImage imageNamed:@"redcircle.png"]];
   
    self.imageView.animationImages = self.images;
    self.imageView.animationDuration = 1.0f;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    
    if ([touch view] == self.imageView)
    {
        if (!self.imageIsHighlighted) {
            self.imageView.highlighted = YES;
            //[self.imageView startAnimating];
            self.imageIsHighlighted = YES;
        } else
        {
            //[self.imageView stopAnimating];
            self.imageView.highlighted = NO;
            self.imageIsHighlighted = NO;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
