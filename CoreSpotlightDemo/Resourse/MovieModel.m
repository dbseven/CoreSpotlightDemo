//
//  MovieModel.m
//  CoreSpotlightDemo
//
//  Created by  Liguoan on 09/12/2016.
//  Copyright © 2016  Liguoan. All rights reserved.
//

#import "MovieModel.h"

@implementation MovieModel

#pragma mark - Constructor
- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        
        self.title = dict[@"Title"];
        self.category = dict[@"Category"];
        self.rating = dict[@"Rating"];
        self.desc = dict[@"Description"];
        self.director = dict[@"Director"];
        self.stars = dict[@"Stars"];
        self.imageName = dict[@"Image"];
        self.image = [UIImage imageNamed: self.imageName];
    }
    return self;
}

+ (instancetype)modelWithDict:(NSDictionary *)dict {
    return [[[self class] alloc] initWithDict: dict];
}

+ (NSMutableArray<MovieModel *> *)models {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource: @"MoviesData" ofType: @"plist"];
    NSArray<NSDictionary *> *dicts = [NSMutableArray arrayWithContentsOfFile: filePath];
    NSMutableArray *models = [NSMutableArray array];
    for (NSDictionary *dict in dicts) {
        [models addObject: [self modelWithDict: dict]];
    }
    
    return models;
}

@end
