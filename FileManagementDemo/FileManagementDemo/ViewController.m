//
//  ViewController.m
//  FileManagementDemo
//
//  Created by Arthur Knopper on 3/22/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSFileManager *fileManager;
@property (nonatomic, strong) NSString *tmpDir;

- (IBAction)createFile:(id)sender;
- (IBAction)deleteFile:(id)sender;
- (IBAction)listFile:(id)sender;
- (IBAction)readFile:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.fileManager = [[NSFileManager alloc] init];
    
    // tmp Directory
    self.tmpDir = NSTemporaryDirectory();
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createFile:(id)sender
{
    NSString *fileName = @"sample.txt";
    NSString *path = [self.tmpDir stringByAppendingPathComponent:fileName];
    
    NSString *contentsOfFile = @"Sample text.";
    
    // Write File
    [contentsOfFile writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    NSLog(@"File sample.txt created at tmp directory");
}

- (IBAction)deleteFile:(id)sender
{
    NSString *path = [self.tmpDir stringByAppendingPathComponent:[self enumerateDirectory]];
    
    // Delete File
    [self.fileManager removeItemAtPath:path error:nil];
}

- (IBAction)listFile:(id)sender
{
    // List Contents of Path
    NSLog(@"contents of path %@ = \n%@", self.tmpDir, [self enumerateDirectory]);
}

- (IBAction)readFile:(id)sender
{
    NSString *path = [self.tmpDir stringByAppendingPathComponent:[self enumerateDirectory]];
    
    NSString *contentsOfFile = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    // List Contents of File
    NSLog(@"Contents of file = %@", contentsOfFile);
}

- (NSString *)enumerateDirectory
{
    NSArray *filesInDirectory = [self.fileManager contentsOfDirectoryAtPath:self.tmpDir
                                                                      error:nil];
    if ([filesInDirectory count] > 0)
    {
        for (NSString *fileName in filesInDirectory)
        {
            if ([fileName isEqualToString:@"sample.txt"])
            {
                return fileName;
            }
        }
    }
    else
    {
        NSLog(@"no file created yet.");
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"iOS File Management"
                                  message:@"No File Created Yet"
                                  delegate:nil
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
        return nil;
    }
    
    return nil;
}

@end
