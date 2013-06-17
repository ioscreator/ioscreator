//
//  CarDetailViewController.m
//  AddItemTableViewDemo
//
//  Created by Arthur Knopper on 16-06-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "CarDetailViewController.h"
#import "Car.h"

@interface CarDetailViewController ()

@end

@implementation CarDetailViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    if ([segue.identifier isEqualToString:@"doneSegue"]) {
        self.carName = self.name.text;
    }
}

@end
