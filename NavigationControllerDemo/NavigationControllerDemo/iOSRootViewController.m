//
//  iOSRootViewController.m
//  NavigationControllerDemo
//
//  Created by Arthur Knopper on 279//12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "iOSRootViewController.h"
#import "iOSSecondViewController.h"


@interface iOSRootViewController ()



@end

@implementation iOSRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"First Controller";
    
    //create UIBArButton to push the second view Controller
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Push" style:UIBarButtonItemStylePlain target:self action:@selector(pushSecondController)];
}

- (void)pushSecondController {
    iOSSecondViewController *secondController = [[iOSSecondViewController alloc] initWithNibName:nil bundle:NULL];
    [self.navigationController pushViewController:secondController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testMethod
{
    //test
}

@end
