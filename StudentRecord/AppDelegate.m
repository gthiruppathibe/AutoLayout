//
//  AppDelegate.m
//  StudentRecord
//
//  Created by Thiruppathi Gandhi on 2/6/15.
//  Copyright (c) 2015 Thiruppathi Gandhi. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()

@property (readonly) FirstViewController *firstViewController;

@end

@implementation AppDelegate


@synthesize firstViewController = _firstViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window setRootViewController: self.firstViewController];
    [self.window makeKeyAndVisible];
    return YES;
}

- (UIWindow*) window {
    if(!_window){
        CGRect windowRect = [[UIScreen mainScreen] bounds];
        _window = [[UIWindow alloc] initWithFrame:windowRect];
    }
    return _window;
    
}
   

- (FirstViewController*)  firstViewController {
    
    if(!_firstViewController){
        _firstViewController = [[FirstViewController alloc] init];
        [_firstViewController.view setBackgroundColor:[UIColor whiteColor]];
    }
    return _firstViewController;
}
@end
