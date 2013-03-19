//
//  iOSViewController.h
//  UISliderTutorial
//
//  Created by Arthur Knopper on 288//12.
//  Copyright (c) 2012 iOSCreator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iOSViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;




- (IBAction)sliderValueChanged:(UISlider *)sender;



@end
