//
//  MovieListViewController.m
//  CoreSpotlightDemo
//
//  Created by  Liguoan on 07/12/2016.
//  Copyright © 2016  Liguoan. All rights reserved.
//

#import "MovieListViewController.h"
#import "MovieDetailViewController.h"
#import "MovieModel.h"
#import "MovieCell.h"

#import <CoreSpotlight/CoreSpotlight.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface MovieListViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation MovieListViewController
#pragma mark - Life Cycles
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNavigationBar];
 
    [self setupTableView];
}

#pragma mark - Basic Setup
- (void)setupNavigationBar {
    
    self.title = @"Movies";
}

- (void)setupTableView {
    
    self.tableView.tableFooterView = [UIView new];
    [self.tableView registerNib: [UINib nibWithNibName: @"MovieCell" bundle: [NSBundle mainBundle]]
         forCellReuseIdentifier: @"MovieCell"];
    self.tableView.estimatedRowHeight = 88;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

#pragma mark - UITableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MovieCell *cell = [tableView dequeueReusableCellWithIdentifier: @"MovieCell" forIndexPath: indexPath];
    
    return cell;
}

@end
