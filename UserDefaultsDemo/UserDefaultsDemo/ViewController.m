//
//  ViewController.m
//  UserDefaultsDemo
//
//  Created by Arthur Knopper on 23-07-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UISwitch *bluetoothSwitch;

- (IBAction)saveSwitchState:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    if ([defaults objectForKey:@"SwitchState"])
        self.bluetoothSwitch.on = [defaults boolForKey:@"SwitchState"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveSwitchState:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if ([self.bluetoothSwitch isOn]) 
        [defaults setBool:YES forKey:@"SwitchState"];
    else 
       [defaults setBool:NO forKey:@"SwitchState"];
}

@end
