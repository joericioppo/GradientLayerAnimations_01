//
//  AIGradientLayer.m
//  GradientAnimation
//
//  Created by test on 9/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AIGradientLayer.h"


@implementation AIGradientLayer


- (id)init {
	
	if (self = [super init]) {
		
		//Colors
		UIColor *colorOne		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.2 alpha:1.0];
		UIColor *colorTwo		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.4 alpha:1.0];
		UIColor *colorThree	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.8 alpha:1.0];
		UIColor *colorFour		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.4 alpha:1.0];
		UIColor *colorFive		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.2 alpha:1.0];
		
		NSArray *colorArray =  [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor, colorFour.CGColor, colorFive.CGColor, nil];
		
		
		NSNumber *stopOne		= [NSNumber numberWithFloat:0.0];
		NSNumber *stopTwo		= [NSNumber numberWithFloat:0.25];
		NSNumber *stopThree	= [NSNumber numberWithFloat:0.5];
		NSNumber *stopFour		= [NSNumber numberWithFloat:0.75];
		NSNumber *stopFive		= [NSNumber numberWithFloat:1.0];
		
		NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, stopThree, stopFour, stopFive, nil];


		self.colors = colorArray;
		
		self.locations = locations;
		
		CGPoint endPoint =  CGPointMake(1.0, 0.5);
		CGPoint	startPoint = CGPointMake(0.0, 0.5);
		
		self.startPoint = startPoint;
		self.endPoint = endPoint;
		
		
	}
	return self;
}


@end
