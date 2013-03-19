//
//  ViewController.m
//  DragViewDemo
//
//  Created by Arthur Knopper on 1/13/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

#define BARBUTTON(TITLE, SELECTOR) 	[[UIBarButtonItem alloc] initWithTitle:TITLE style:UIBarButtonItemStylePlain target:self action:SELECTOR]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGFloat halfSizeOfView = 25.0f;
    
    self.view.backgroundColor = [UIColor blackColor];
    
    NSInteger maxViews = 10;
    
    CGSize insetSize = CGRectInset(self.view.bounds, 2*halfSizeOfView, 2*halfSizeOfView).size;
    
    // Add the Views
	for (int i = 0; i < maxViews; i++)
	{
        
       
        
        // Return a random position within the inset bounds
        CGFloat pointX = random() % ((int)insetSize.width) + halfSizeOfView;
        CGFloat pointY = random() % ((int)insetSize.height) + halfSizeOfView;
        
        DragView2 *flowerDragger = [[DragView2 alloc] initWithFrame:CGRectMake(pointX, pointY, 50, 50)];
		[self.view addSubview:flowerDragger];
    }
    
    //[self layoutFlowers];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (CGPoint) randomViewPosition
{
    CGFloat halfFlower = 32.0f; // half of the size of the flower
    
    // The flower must be placed fully within the view. Inset accordingly
    CGSize insetSize = CGRectInset(self.view.bounds, 2*halfFlower, 2*halfFlower).size;
    
    // Return a random position within the inset bounds
    CGFloat randomX = random() % ((int)insetSize.width) + halfFlower;
    CGFloat randomY = random() % ((int)insetSize.height) + halfFlower;
    return CGPointMake(randomX, randomY);
}

- (void) layoutFlowers
{
    // Move every flower into a new random place
    //[UIView animateWithDuration:0.3f animations: ^(){
   /*     for (UIView *flowerDragger in self.view.subviews)
            flowerDragger.center = [self randomViewPosition];*/
    for (UIView *flowerDragger in self.view.subviews)
        flowerDragger.center = [self randomViewPosition];
    
}

@end
