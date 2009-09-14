//
//  GradientAnimationViewController.h
//  GradientAnimation
//
//  Created by test on 9/12/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "AIGradientLayer.h"

@interface GradientAnimationViewController : UIViewController {

	CAGradientLayer *gradientLayer;

	NSArray	*startLocations;
	NSArray	*endLocations;

}

-(void)startAnimation;

@end

