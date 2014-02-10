//
//  ViewController.m
//  iOS7CurrentLocationTutorial
//
//  Created by Arthur Knopper on 10-02-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController () <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *latitudeValue;
@property (weak, nonatomic) IBOutlet UILabel *longtitudeValue;

@property (nonatomic,strong) CLLocationManager *locationManager;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([CLLocationManager locationServicesEnabled]) {
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        [self.locationManager startUpdatingLocation];
    } else {
        NSLog(@"Location services are not enabled");
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = [locations lastObject];
    self.latitudeValue.text = [NSString stringWithFormat:@"%f", location.coordinate.latitude];
    self.longtitudeValue.text = [NSString stringWithFormat:@"%f", location.coordinate.longitude];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
