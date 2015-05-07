//
//  AppDelegate.m
//  Tipsy
//
//  Created by Justin Oakes on 5/1/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstRunViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.oklasoft.tipsy"];

    return YES;
}



@end
