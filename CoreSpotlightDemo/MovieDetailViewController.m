//
//  MovieDetailViewController.m
//  CoreSpotlightDemo
//
//  Created by  Liguoan on 07/12/2016.
//  Copyright © 2016  Liguoan. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "MovieModel.h"

@interface MovieDetailViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *movieImageView;

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;

@property (nonatomic, weak) IBOutlet UILabel *categoryLabel;

@property (nonatomic, weak) IBOutlet UILabel *descLabel;

@property (nonatomic, weak) IBOutlet UILabel *directorLabel;

@property (nonatomic, weak) IBOutlet UILabel *starsLabel;

@property (nonatomic, weak) IBOutlet UILabel *ratingLabel;


@end

@implementation MovieDetailViewController
#pragma mark - Life Cycles
- (void)viewDidLoad {
    [super viewDidLoad];
 
    [self setupUI];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
}

#pragma mark - Basic Setup
- (void)setupUI {
    
    self.ratingLabel.layer.cornerRadius = 20.0f;
    self.ratingLabel.layer.masksToBounds = YES;
}

@end
