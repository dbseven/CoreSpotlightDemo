//
//  AppDelegate.m
//  CoreSpotlightDemo
//
//  Created by  Liguoan on 07/12/2016.
//  Copyright © 2016  Liguoan. All rights reserved.
//

#import "AppDelegate.h"
#import "MovieListViewController.h"
#import <CoreSpotlight/CoreSpotlight.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler {
    
    if ([userActivity.activityType isEqualToString: CSSearchableItemActionType]) {
        
        UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
        if ([navigationController isKindOfClass: [UINavigationController class]]) {
            UIViewController *bottomViewController = [navigationController.viewControllers firstObject];
            [bottomViewController restoreUserActivityState: userActivity];
        }
    }
    
    return YES;
}

@end
