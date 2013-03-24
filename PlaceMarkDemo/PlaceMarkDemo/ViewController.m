//
//  ViewController.m
//  PlaceMarkDemo
//
//  Created by Arthur Knopper on 3/23/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController ()

@property (nonatomic, weak) IBOutlet MKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.mapView.mapType = MKMapTypeStandard;
    
    CLLocationCoordinate2D center =
    CLLocationCoordinate2DMake(37.323, -122.031);
    MKCoordinateSpan span =
    MKCoordinateSpanMake(0.2, 0.2);
    MKCoordinateRegion regionToDisplay =
    MKCoordinateRegionMake(center, span);
    [self.mapView setRegion:regionToDisplay];
    
    NSString *address = @"1 Infinite Loop, CA, USA";
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    
    [geocoder geocodeAddressString:address
      completionHandler:^(NSArray* placemarks, NSError* error){
        // Check for returned placemarks
        if (placemarks && placemarks.count > 0) {
          CLPlacemark *topResult = [placemarks objectAtIndex:0];
                         
          MKPlacemark *placemark = [[MKPlacemark alloc]initWithPlacemark:topResult];
          [self.mapView addAnnotation:placemark];
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
