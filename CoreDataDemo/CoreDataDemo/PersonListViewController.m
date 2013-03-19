//
//  PersonListViewController.m
//  CoreDataDemo
//
//  Created by Arthur Knopper on 20/11/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "PersonListViewController.h"
#import "AppDelegate.h"
#import "Person.h"

@interface PersonListViewController ()

@end

@implementation PersonListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = @"Persons";
    
    self.tableViewPersons = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.tableViewPersons.delegate = self;
    self.tableViewPersons.dataSource = self;
    
    [self.view addSubview:self.tableViewPersons];
    
    [self createNewPersonWithFirstName:@"Anthony" lastName:@"Robbins" age:51];
    [self createNewPersonWithFirstName:@"Richard" lastName:@"Branson" age:61];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    id <NSFetchedResultsSectionInfo> sectionInfo = [self.personsFRC.sections objectAtIndex:section];
    
    return [sectionInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *result = nil;
    
    static NSString *PersonTableViewCell = @"PersonTableViewCell";
    
    result = [tableView dequeueReusableCellWithIdentifier:PersonTableViewCell];
    
    if (result == nil) {
        result =
        [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:PersonTableViewCell];
        
        result.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    Person *person = [self.personsFRC objectAtIndexPath:indexPath];
    
    result.textLabel.text = [person.firstName stringByAppendingFormat:@" %@", person.lastName];
    
    result.detailTextLabel.text = [NSString stringWithFormat:@"Age: %lu", (long)[person.age integerValue]];
    
    return result;
}

- (NSManagedObjectContext *)managedObjectContext
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *managedObjectContext = appDelegate.managedObjectContext;
    
    return managedObjectContext;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self != nil)
    {
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
        
        NSEntityDescription *entity = [NSEntityDescription entityForName:@"Person" inManagedObjectContext:self.managedObjectContext];
        
        
        NSSortDescriptor *ageSort = [[NSSortDescriptor alloc] initWithKey:@"age" ascending:YES];
        
        NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:ageSort, nil];
        fetchRequest.sortDescriptors = sortDescriptors;
        
        fetchRequest.entity = entity;
        
        self.personsFRC = [[NSFetchedResultsController alloc]
                           initWithFetchRequest:fetchRequest managedObjectContext:[self managedObjectContext] sectionNameKeyPath:nil cacheName:nil];
        
        self.personsFRC.delegate = self;
        
        NSError *fetchingError = nil;
        
        if ([self.personsFRC performFetch:&fetchingError])
        {
            NSLog(@"Successfully fetched.");
        } else {
            NSLog(@"Failed to fetch.");
        }
    }
    
    return self;
}

- (BOOL)createNewPersonWithFirstName:(NSString *)paramFirstName
                            lastName:(NSString *)paramLastName
                                 age:(NSInteger)paramAge
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *managedObjectContext = appDelegate.managedObjectContext;
    
    BOOL result = NO;
    
    if ([paramFirstName length] == 0 ||
        [paramLastName length] == 0) {
        NSLog(@"First and Last names are mandatory.");
        return NO;
    }
    
    Person *newPerson = [NSEntityDescription
                         insertNewObjectForEntityForName:@"Person"
                         inManagedObjectContext:managedObjectContext];
    
    if (newPerson == nil) {
        NSLog(@"Failed to create the new Person");
        return NO;
    }
    
    newPerson.firstName = paramFirstName;
    newPerson.lastName = paramLastName;
    newPerson.age = [NSNumber numberWithInteger:paramAge];
    
    NSError *savingError = nil;
    
    if ([managedObjectContext save:&savingError]) {
        return YES;
    } else {
        NSLog(@"Failed to save the new person. Error = %@", savingError);
    }
    
    return result;
}

@end
