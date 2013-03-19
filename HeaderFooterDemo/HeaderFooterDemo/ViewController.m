//
//  ViewController.m
//  HeaderFooterDemo
//
//  Created by Arthur Knopper on 1/15/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

/*@property (nonatomic, strong) NSArray *tableData;*/

@property (nonatomic, strong) NSMutableArray *countries;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.countries = [[NSMutableArray alloc] init];
    
    NSArray *countriesInEurope = @[@"France",@"Spain",@"Germany",@"Great Britain",
    @"Italy", @"Portugal"];
    NSDictionary *europeCountriesDict = @{@"countries" : countriesInEurope};
    
    NSArray *countriesinAsia = @[@"Japan", @"China",@"India",@"Indonesia"];
    NSDictionary *asiaCountriesDict = @{@"countries" : countriesinAsia};
    
    NSArray *countriesinSouthAmerica = @[@"Argentinia", @"Brasil",@"Chile"];
    NSDictionary *southAmericaCountriesDict = @{@"countries" : countriesinSouthAmerica};
    
    [self.countries addObject:europeCountriesDict];
    [self.countries addObject:asiaCountriesDict];
    [self.countries addObject:southAmericaCountriesDict];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView
  numberOfRowsInSection:(NSInteger)section
{
    NSDictionary *dictionary = self.countries[section];
    NSArray *array = dictionary[@"countries"];
    return [array count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.countries count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSDictionary *dictionary = self.countries[indexPath.section];
    NSArray *array = dictionary[@"countries"];
    NSString *cellvalue = array[indexPath.row];
    
    cell.textLabel.text = cellvalue;
    
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *sectionHeaderView = [[UIView alloc] initWithFrame:
                               CGRectMake(0, 0, tableView.frame.size.width, 50.0)];
    sectionHeaderView.backgroundColor = [UIColor cyanColor];
    
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:
                            CGRectMake(15, 15, sectionHeaderView.frame.size.width, 25.0)];
    
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.textAlignment = NSTextAlignmentCenter;
    [headerLabel setFont:[UIFont fontWithName:@"Verdana" size:20.0]];
    [sectionHeaderView addSubview:headerLabel];
    
    switch (section) {
        case 0:
            headerLabel.text = @"Europe";
            NSLog(@"bla");
            return sectionHeaderView;
            break;
        case 1:
            headerLabel.text = @"Asia";
            return sectionHeaderView;
            break;
        case 2:
            headerLabel.text = @"South America";
            return sectionHeaderView;
            break;
        default:
            break;
    }
    
    return sectionHeaderView;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
	UIImage *myImage = [UIImage imageNamed:@"gradient.png"];
                        UIImageView *imageView = [[UIImageView alloc] initWithImage:myImage];
                        imageView.frame = CGRectMake(10,10,1,30);
                        return imageView;
}

/*- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *titleHeader;
    
    switch (section) {
        case 0:
            titleHeader = @"Europe";
            return titleHeader;
            break;
        case 1:
            titleHeader = @"Asia";
            return titleHeader;
        case 2:
            titleHeader = @"South-America";
            return titleHeader;
        
            
        default:
            break;
    }
    
    return titleHeader;
}*/


- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 30.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50.0f;
}








@end
