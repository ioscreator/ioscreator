//
//  CarDetailViewController.h
//  AddItemTableViewDemo
//
//  Created by Arthur Knopper on 16-06-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarDetailViewController : UIViewController

@property (nonatomic, strong) NSString *carName;
@property (nonatomic, strong) IBOutlet UITextField *name;

@end
