//
//  Car.h
//  AddItemTableViewDemo
//
//  Created by Arthur Knopper on 15-06-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (nonatomic, strong) NSString *brandName;

- (id)initWithName:(NSString *)brandName;

@end
