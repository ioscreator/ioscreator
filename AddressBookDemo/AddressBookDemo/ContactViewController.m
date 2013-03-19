//
//  ContactViewController.m
//  AddressBookDemo
//
//  Created by Arthur Knopper on 25/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "ContactViewController.h"


@interface ContactViewController ()

@property (nonatomic, strong) IBOutlet UILabel *firstNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *lastNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *homeEmailLabel;
@property (nonatomic, strong) IBOutlet UILabel *workEmailLabel;


@end

@implementation ContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithPerson:(Person *)person
{
    self = [super initWithNibName:@"ContactViewController" bundle:nil];
    if (self) {
        _firstName = [person.firstName copy];
        _lastName = [person.lastName copy];
        _homeEmail = [person.homeEmail copy];
        _workEmail = [person.workEmail copy];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Contact Details";
    
    self.firstNameLabel.text = _firstName;
    self.lastNameLabel.text = _lastName;
    self.homeEmailLabel.text = _homeEmail;
    self.workEmailLabel.text = _workEmail;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
