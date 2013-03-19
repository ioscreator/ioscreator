//
//  Person.h
//  CoreDataDemo
//
//  Created by Arthur Knopper on 19/11/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;

@end
