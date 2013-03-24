//
//  iOSViewController.m
//  CameraApp
//
//  Created by Arthur Knopper on 2/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "iOSViewController.h"

@interface iOSViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
//@property (nonatomic, strong) IBOutlet UIButton *choosePhotoBtn;
@property (nonatomic, strong) IBOutlet UIButton *takePhotoBtn;

@end

@implementation iOSViewController

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

- (IBAction)getPhoto:(id)sender
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    
    //if((UIButton *) sender == self.choosePhotoBtn) {
	//	picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
	//} else {
		picker.sourceType = UIImagePickerControllerSourceTypeCamera;
	//}
    
    [self presentViewController:picker animated:YES completion:NULL];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    self.imageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
}

@end
