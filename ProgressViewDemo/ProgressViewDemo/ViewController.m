//
//  ViewController.m
//  ProgressViewDemo
//
//  Created by Arthur Knopper on 3/6/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIProgressView *progressView;
@property (nonatomic, strong) IBOutlet UILabel *progressLabel;
@property (nonatomic, strong) NSTimer *myTimer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	    
    self.progressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];
    
    self.progressView.center = self.view.center;
    [self.view addSubview:self.progressView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startCount:(id)sender {
        self.myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateUI:) userInfo:nil repeats:YES];
}

- (void)updateUI:(NSTimer *)timer
{
    static int count =0;
    count++;
    
    if (count <=10) {
    self.progressLabel.text = [NSString stringWithFormat:@"%d %%",count*10];
    self.progressView.progress = (float)count/10.0f;
    }
    else {
        [self.myTimer invalidate];
        self.myTimer = nil;
    }
}


@end
