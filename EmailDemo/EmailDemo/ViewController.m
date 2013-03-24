//
//  ViewController.m
//  EmailDemo
//
//  Created by Arthur Knopper on 7/10/12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate> 

@property (nonatomic, weak) IBOutlet UITextField *subject;
@property (nonatomic, weak) IBOutlet UITextView *messageBody;
@property (nonatomic, weak) IBOutlet UIButton *mailButton;




@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.subject.delegate = self;
    self.messageBody.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendMail {
    

MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    picker.mailComposeDelegate  = self;
    
    [picker setSubject:self.subject.text];
    
    //NSString *pageLink = @"http://ioscreator.com";
    //SString *emailBody = [NSString stringWithFormat:@"Sent from %@", pageLink];
    
    [picker setMessageBody:self.messageBody.text isHTML:YES];
    
    picker.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    
    [self presentViewController:picker animated:YES completion:NULL];
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

//- (void)textViewDidEndEditing:(UITextView *)textView;
//{
//    [textView resignFirstResponder];
//}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    self.messageBody.text = textView.text;
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}




@end
