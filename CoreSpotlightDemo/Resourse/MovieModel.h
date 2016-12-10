//
//  MovieModel.h
//  CoreSpotlightDemo
//
//  Created by  Liguoan on 09/12/2016.
//  Copyright © 2016  Liguoan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieModel : NSObject

+ (NSMutableArray<MovieModel *> *)models;

+ (instancetype) modelWithDict:(NSDictionary *)dict;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *category;

@property (nonatomic, copy) NSString *rating;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, copy) NSString *director;

@property (nonatomic, copy) NSString *stars;

@property (nonatomic, copy) NSString *imageName;

@property (nonatomic, strong) UIImage *image;

@end
