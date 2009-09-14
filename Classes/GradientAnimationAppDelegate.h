//
//  GradientAnimationAppDelegate.h
//  GradientAnimation
//
//  Created by test on 9/12/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GradientAnimationViewController;

@interface GradientAnimationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GradientAnimationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GradientAnimationViewController *viewController;

@end

