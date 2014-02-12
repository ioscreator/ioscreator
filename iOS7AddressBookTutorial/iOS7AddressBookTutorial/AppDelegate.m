//
//  AppDelegate.m
//  iOS7AddressBookTutorial
//
//  Created by Arthur Knopper on 1/29/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "AppDelegate.h"
#import <AddressBook/AddressBook.h>

NSString *const kDenied = @"Access to address book is denied";
NSString *const kRestricted = @"Acces to address book is restricted";

ABAddressBookRef addressBook = NULL;


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*CFErrorRef error = NULL;
    
    switch (ABAddressBookGetAuthorizationStatus()) {
        case kABAuthorizationStatusAuthorized: {
            addressBook = ABAddressBookCreateWithOptions(NULL, &error);
            // access addressbook
            [self useAddressBook:addressBook];
            if (addressBook != NULL) CFRelease(addressBook);
            break;
        }
        case kABAuthorizationStatusDenied: {
            //[self displayMessage:kDenied];
            break;
        }
        case kABAuthorizationStatusNotDetermined: {
            addressBook = ABAddressBookCreateWithOptions(NULL, &error);
            ABAddressBookRequestAccessWithCompletion(addressBook, ^(bool granted, CFErrorRef error) {
                if (granted) {
                   NSLog(@"Access was granted");
                    [self useAddressBook:addressBook];
                }
                else NSLog(@"Access was not granted");
                if (addressBook != NULL) CFRelease(addressBook);
            });
            break;
        }
        case kABAuthorizationStatusRestricted: {
            //[self displayMessage:kRestricted];
            break;
        }
    }*/
    
    return YES;
}

/*- (void)displayMessage:(NSString *)message
{
    UIAlertView *alertview = [[UIAlertView alloc ]initWithTitle:@"AddressBook" message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertview show];
}

- (void)useAddressBook:(ABAddressBookRef)paramAddressBook
{
    // check unsaved changes
    if (ABAddressBookHasUnsavedChanges(paramAddressBook)) {
        NSLog(@"changes were found in the address book");
        BOOL doYouWantToSaveChanges = YES;
        // revert or save
        if (doYouWantToSaveChanges) {
            CFErrorRef saveError = NULL;
            if (ABAddressBookSave(paramAddressBook, &saveError)) {
                // succesfully saved
            }
            else {
                // save error
            }
        }
        else {
            ABAddressBookRevert(paramAddressBook);
        }
    }
    else {
        NSLog(@"no changes to address book");
        }
}*/

							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
