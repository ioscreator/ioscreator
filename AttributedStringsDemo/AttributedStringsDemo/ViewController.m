//
//  ViewController.m
//  AttributedStringsDemo
//
//  Created by Arthur Knopper on 16/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSDictionary *firstAttributes = @{NSForegroundColorAttributeName: [UIColor blueColor],
NSBackgroundColorAttributeName: [UIColor yellowColor],
NSUnderlineStyleAttributeName: @1
};
    
    NSDictionary *secondAttributes = @{ NSForegroundColorAttributeName: [UIColor grayColor],
    NSBackgroundColorAttributeName: [UIColor blueColor],
NSStrikethroughStyleAttributeName: @1
};
    
    NSDictionary *thirdAttributes = @{ NSForegroundColorAttributeName: [UIColor greenColor],
NSBackgroundColorAttributeName: [UIColor blackColor]
};

    
    NSMutableAttributedString *myString = [[NSMutableAttributedString alloc] initWithString:@"Testing Attributed Strings"];
    
    [myString setAttributes:firstAttributes range:NSMakeRange(0, 7)];
    [myString setAttributes:secondAttributes range:NSMakeRange(8,10)];
    [myString setAttributes:thirdAttributes range:NSMakeRange(19, 7)];

    self.label.attributedText = myString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
