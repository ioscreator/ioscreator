//
//  PersonListViewController.h
//  CoreDataDemo
//
//  Created by Arthur Knopper on 20/11/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) UITableView *tableViewPersons;
@property (nonatomic, strong) NSFetchedResultsController *personsFRC;



@end
