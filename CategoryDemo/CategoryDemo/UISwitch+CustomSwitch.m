//
//  UISwitch+CustomSwitch.m
//  CategoryDemo
//
//  Created by Arthur Knopper on 18-07-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "UISwitch+CustomSwitch.h"

@implementation UISwitch (CustomSwitch)

+ (id)UISwitchWithTintColor:(UIColor *)tintColor onTintColor:(UIColor *)onTintColor thumbTintColor:(UIColor *)thumbTintColor
{
    [[UISwitch appearance] setOnTintColor:onTintColor];
    [[UISwitch appearance] setTintColor:tintColor];
    [[UISwitch appearance] setThumbTintColor:thumbTintColor];
    
    return self;
}


@end
