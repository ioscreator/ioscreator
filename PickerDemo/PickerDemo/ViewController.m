//
//  ViewController.m
//  PickerDemo
//
//  Created by Arthur Knopper on 15/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSMutableArray *colors;
}

@property (nonatomic,strong) UIPickerView *pickerView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    colors = [[NSMutableArray alloc] init];
    colors = [@[@"Blue",@"Red",@"Green",@"Yellow"] mutableCopy];
    
    self.pickerView = [[UIPickerView alloc] init];
    self.pickerView.center = self.view.center;
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
    
    [self.view addSubview:self.pickerView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark UIPickerViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [colors count];
}

# pragma mark UIPickerViewDelegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [colors objectAtIndex:row];
}





@end
