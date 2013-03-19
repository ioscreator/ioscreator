//
//  MovieCell.h
//  CustomizingTableViewCell
//
//  Created by Arthur Knopper on 1/2/13.
//  Copyright (c) 2013 Arthur Knopper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *yearLabel;
@property (nonatomic, weak) IBOutlet UIImageView *posterImageView;

@end
