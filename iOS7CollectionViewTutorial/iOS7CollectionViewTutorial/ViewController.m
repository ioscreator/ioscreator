//
//  ViewController.m
//  iOS7CollectionViewTutorial
//
//  Created by Arthur Knopper on 12-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) BOOL cellColor;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"coloredCell" forIndexPath:indexPath];
    
    cell.backgroundColor = (self.cellColor) ? [UIColor redColor] : [UIColor blueColor];
    self.cellColor = !self.cellColor;
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
