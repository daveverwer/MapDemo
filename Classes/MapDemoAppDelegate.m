//
//  MapDemoAppDelegate.m
//  MapDemo
//
//  Created by Dave Verwer on 09/07/2009.
//  Copyright Shiny Development Ltd 2009. All rights reserved.
//

#import "MapDemoAppDelegate.h"
#import "MapDemoViewController.h"

@implementation MapDemoAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
