//
//  iOSViewController.h
//  SimpleCalculator
//
//  Created by Arthur Knopper on 129//12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iOSViewController : UIViewController



@property (weak, nonatomic) IBOutlet UILabel *calculatorDisplay;
@property (nonatomic) BOOL typingNumber;
@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic, copy) NSString *operation;


- (IBAction)numberPressed:(UIButton *)sender;

- (IBAction)calculationPressed:(id)sender;
- (IBAction)equalsPressed;

@end
