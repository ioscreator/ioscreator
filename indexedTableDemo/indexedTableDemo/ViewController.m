//
//  ViewController.m
//  indexedTableDemo
//
//  Created by Arthur Knopper on 12/13/12.
//  Copyright (c) 2012 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *tableData;
@property (nonatomic, strong) NSArray *indexTitlesArray;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*self.tableData = [[NSArray alloc] initWithObjects:@"Aaron", @"Bailey", @"Cadan", @"Dafydd",  @"Eamonn", @"Fabian", @"Gabrielle", @"Hafwen", @"Isaac", @"Jacinta", @"Kathleen", @"Lucy", @"Maurice", @"Nadia", @"Octavia", @"Padraig", @"Quinta", @"Rachel", @"Sabina", @"Tabitha", @"Uma", @"Valentina", @"Wallis", @"Xanthe", @"Yvonne", @"Zebediah", nil];*/
    
    NSString *numbers = @"100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500";
    self.tableData = [numbers componentsSeparatedByString:@" "];
    
    numbers = @"1 2 3 4 5 6 7 8 9 10 11 12 13 14 15";
    self.indexTitlesArray = [numbers componentsSeparatedByString:@" "];
    
    /*NSString *letters = @"A B C D E F G H I J K L M N O P Q R S T U V W X Y Z";
    self.indexTitlesArray = [letters componentsSeparatedByString:@" "];*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.section];
    
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.indexTitlesArray count];
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return self.indexTitlesArray;
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
{
    return [self.indexTitlesArray indexOfObject:title];
}


@end
