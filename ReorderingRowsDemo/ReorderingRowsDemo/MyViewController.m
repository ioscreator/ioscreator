//
//  MyViewController.m
//  ReorderingRowsDemo
//
//  Created by Arthur Knopper on 27-07-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property (nonatomic, strong) NSMutableArray *tableData;

- (IBAction)startEditing:(id)sender;


@end

@implementation MyViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableData = [@[@"One",@"Two",@"Three",@"Four",@"Five"] mutableCopy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];    
    // Configure the cell...
    cell.textLabel.text = self.tableData[indexPath.row];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    NSString *stringToMove = self.tableData[sourceIndexPath.row];
    [self.tableData removeObjectAtIndex:sourceIndexPath.row];
    [self.tableData insertObject:stringToMove atIndex:destinationIndexPath.row];
}

- (IBAction)startEditing:(id)sender {
    self.editing = YES;
}
@end
