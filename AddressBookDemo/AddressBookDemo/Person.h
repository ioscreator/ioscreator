//
//  Person.h
//  AddressBookDemo
//
//  Created by Arthur Knopper on 24/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *homeEmail;
@property (nonatomic, strong) NSString *workEmail;

@end
