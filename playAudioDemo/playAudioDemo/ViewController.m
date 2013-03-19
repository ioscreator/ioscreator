//
//  ViewController.m
//  playAudioDemo
//
//  Created by Arthur Knopper on 30/11/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//


#import "ViewController.h"


@interface ViewController () //<AVAudioPlayerDelegate>

@property (nonatomic, strong) AVAudioPlayer *audioPlayer;
@property (nonatomic) BOOL isPlaying;
@property (nonatomic, strong) NSTimer *timer;

@property (nonatomic, strong) IBOutlet UILabel *trackTitle;
@property (nonatomic, strong) IBOutlet UILabel *playedTime;


- (IBAction)stopSound:(id)sender;
- (IBAction)playOrPauseSound:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.isPlaying = NO;
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *filePath = [mainBundle pathForResource:@"thestonefoxes-everybodyknows" ofType:@"mp3"];
    
    self.trackTitle.text = @"The Stone Foxes - EveryBody Knows";
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.audioPlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                     error:&error];
    [self.audioPlayer prepareToPlay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playOrPauseSound:(id)sender;
{
    if (self.isPlaying)
    {
        // Music is currently playing
        NSLog(@"Pausing Music");
        [self.audioPlayer pause];
        self.isPlaying = NO;
    } else
    {
        // Music is currenty paused/stopped
        NSLog(@"Playing music");
        [self.audioPlayer play];
        self.isPlaying = YES;
        
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                             target:self
                                                           selector:@selector(updateTime)
                                                           userInfo:nil
                                                            repeats:YES];
    }
}

- (IBAction)stopSound:(id)sender
{
        NSLog(@"Stopping music");
        [self.audioPlayer stop];
        self.audioPlayer.currentTime = 0;
        self.isPlaying = NO;
}

- (void)updateTime {
    NSTimeInterval currentTime = self.audioPlayer.currentTime;
    
    NSInteger minutes = floor(currentTime/60);
    NSInteger seconds = trunc(currentTime - minutes * 60);
    
    // update your UI with currentTime;
    self.playedTime.text = [NSString stringWithFormat:@"%d:%02d", minutes, seconds];
}


@end
