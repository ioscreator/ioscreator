//
//  ViewController.m
//  iOS7ShowRegionMapKitTutorial
//
//  Created by Arthur Knopper on 19-02-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#define NY_LATITUDE 40.714353
#define NY_LONGTITUDE -74.005973

#import "ViewController.h"
#import <MapKit/MapKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *myMapView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self gotoLocation];
}

- (void)gotoLocation
{
    MKCoordinateRegion newRegion;
    
    newRegion.center.latitude = NY_LATITUDE;
    newRegion.center.longitude = NY_LONGTITUDE;
    
    newRegion.span.latitudeDelta = 0.5f;
    newRegion.span.longitudeDelta = 0.5f;
    
    [self.myMapView setRegion:newRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
