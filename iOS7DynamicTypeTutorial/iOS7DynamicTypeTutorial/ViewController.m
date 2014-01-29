//
//  ViewController.m
//  iOS7DynamicTypeTutorial
//
//  Created by Arthur Knopper on 28-01-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *headlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *subheadlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *bodyLabel;
@property (weak, nonatomic) IBOutlet UILabel *footnoteLabel;
@property (weak, nonatomic) IBOutlet UILabel *caption1Label;
@property (weak, nonatomic) IBOutlet UILabel *caption2Label;


@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self updateFonts];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didChangeTextSize:)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
}

- (void)didChangeTextSize:(NSNotification *)notification
{
    [self updateFonts];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateFonts
{
    self.headlineLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    self.subheadlineLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    self.bodyLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.footnoteLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    self.caption1Label.font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    self.caption2Label.font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
}



@end
