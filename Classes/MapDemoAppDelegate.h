//
//  MapDemoAppDelegate.h
//  MapDemo
//
//  Created by Dave Verwer on 09/07/2009.
//  Copyright Shiny Development Ltd 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MapDemoViewController;

@interface MapDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MapDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MapDemoViewController *viewController;

@end

