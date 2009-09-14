//
//  GradientAnimationAppDelegate.m
//  GradientAnimation
//
//  Created by test on 9/12/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GradientAnimationAppDelegate.h"
#import "GradientAnimationViewController.h"

@implementation GradientAnimationAppDelegate

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
