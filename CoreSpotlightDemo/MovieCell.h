//
//  MovieCell.h
//  CoreSpotlightDemo
//
//  Created by  Liguoan on 07/12/2016.
//  Copyright © 2016  Liguoan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIImageView *movieImageView;

@property (nonatomic, weak) IBOutlet UILabel *labelTitle;

@property (nonatomic, weak) IBOutlet UILabel *labelDesc;

@property (nonatomic, weak) IBOutlet UILabel *labelRating;

@end
