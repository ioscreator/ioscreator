//
//  ViewController.m
//  ScrollViewWithPaging
//
//  Created by Arthur Knopper on 7/21/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor blueColor],
                           [UIColor greenColor],[UIColor yellowColor] , nil];
    
        for (int i = 0; i < colors.count; i++) {
            
            CGRect frame;
            frame.origin.x = self.scrollView.frame.size.width * i;
            frame.size = self.scrollView.frame.size;
            
            self.scrollView.pagingEnabled = YES;
            
            UIView *subview = [[UIView alloc] initWithFrame:frame];
            subview.backgroundColor = [colors objectAtIndex:i];
            [self.scrollView addSubview:subview];
        }
        
        self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * colors.count, self.scrollView.frame.size.height);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
