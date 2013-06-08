//
//  ViewController.m
//  ChangeVolumeDemo
//
//  Created by Arthur Knopper on 07-06-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@property (nonatomic, strong) AVAudioPlayer *audioPlayer;

- (IBAction)playSound:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *filePath = [mainBundle pathForResource:@"drum" ofType:@"mp3"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.audioPlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                     error:&error];
    [self.audioPlayer prepareToPlay];
    self.audioPlayer.numberOfLoops = -1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playSound:(id)sender {
    [self.audioPlayer play];
    
    UIView *wrapperView = [[UIView alloc] initWithFrame:CGRectMake(20, 120, 260, 20)];
    wrapperView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:wrapperView];
    
    MPVolumeView *volumeView = [[MPVolumeView alloc] initWithFrame: wrapperView.bounds];
    [wrapperView addSubview:volumeView];
}

@end
