//
//  AppDelegate.h
//  CoreDataDemo
//
//  Created by Arthur Knopper on 16/11/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PersonListViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) PersonListViewController *personListViewController;


- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
