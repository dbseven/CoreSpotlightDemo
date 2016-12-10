//
//  MovieCell.m
//  CoreSpotlightDemo
//
//  Created by  Liguoan on 07/12/2016.
//  Copyright © 2016  Liguoan. All rights reserved.
//

#import "MovieCell.h"

@implementation MovieCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.labelRating.layer.cornerRadius = 16.0f;
    self.labelRating.layer.masksToBounds = YES;
}

@end
