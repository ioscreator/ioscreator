//
//  ViewController.m
//  openPDFDocument
//
//  Created by Arthur Knopper on 12-07-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIDocumentInteractionControllerDelegate>

@property (nonatomic, strong) UIDocumentInteractionController *controller;

- (IBAction)openPDF:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openPDF:(id)sender {
    NSURL *URL = [[NSBundle mainBundle] URLForResource:@"MobileHIG" withExtension:@"pdf"];
    if (URL) {
        self.controller = [UIDocumentInteractionController interactionControllerWithURL:URL];
        self.controller.delegate = self;
        
        // Present "Open In Menu"
        [self.controller presentOpenInMenuFromRect:[sender frame] inView:self.view animated:YES];
    }
}

@end
