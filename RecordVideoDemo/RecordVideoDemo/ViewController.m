//
//  ViewController.m
//  RecordVideoDemo
//
//  Created by Arthur Knopper on 24-04-13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import "ViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController () <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

- (IBAction)recordVideo:(id)sender;
- (IBAction)playVideo:(id)sender;

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

- (IBAction)recordVideo:(id)sender {
    UIImagePickerController *videoScreen = [[UIImagePickerController alloc] init];
    videoScreen.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    // Displays a control that allows the user to choose movie capture
    videoScreen.mediaTypes = [[NSArray alloc] initWithObjects:(NSString *)kUTTypeMovie, nil];
    
    videoScreen.allowsEditing = NO;
    videoScreen.delegate = self;
    
    [self presentViewController:videoScreen animated: YES completion:NO];
}

- (IBAction)playVideo:(id)sender {
    UIImagePickerController *mediaLibrary = [[UIImagePickerController alloc] init];
    mediaLibrary.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    mediaLibrary.mediaTypes = [[NSArray alloc] initWithObjects: (NSString *) kUTTypeMovie, nil];
    // Hides the controls for moving & scaling pictures, or for,
    // trimming movies. To instead show the controls, use YES.
    mediaLibrary.allowsEditing = NO;
    //mediaUI.delegate = delegate;
    // 3 - Display image picker
    [self presentViewController:mediaLibrary animated:YES completion:NO];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    NSString *mediaType = [info objectForKey: UIImagePickerControllerMediaType];
    [self dismissViewControllerAnimated:NO completion:NO];
    // Handle a movie capture
    if (CFStringCompare ((__bridge_retained CFStringRef) mediaType, kUTTypeMovie, 0) == kCFCompareEqualTo) {
        NSString *moviePath = [[info objectForKey:UIImagePickerControllerMediaURL] path];
        if (UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(moviePath)) {
            UISaveVideoAtPathToSavedPhotosAlbum(moviePath, self, nil, nil);
        }
    }
}



@end
