//
//  ContactViewController.h
//  AddressBookDemo
//
//  Created by Arthur Knopper on 25/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ContactViewController : UIViewController

@property (nonatomic, strong) Person *person;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *homeEmail;
@property (nonatomic, strong) NSString *workEmail;

- (id)initWithPerson:(Person *)person;

@end
