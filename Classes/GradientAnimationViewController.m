//
//  GradientAnimationViewController.m
//  GradientAnimation
//
//  Created by test on 9/12/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GradientAnimationViewController.h"

@implementation GradientAnimationViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/




- (void)viewDidLoad {

    [super viewDidLoad];

	UIView *contentView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];

	contentView.backgroundColor = [UIColor blackColor];

	self.view = contentView;
	
	[contentView release];

	
	gradientLayer = [CAGradientLayer layer];
	
	gradientLayer.frame = CGRectMake(0.0, 0.0, 480.0, 320.0);
	
	gradientLayer.colors = [NSArray arrayWithObjects:
							(id)[UIColor colorWithWhite:1.0 alpha:1.0].CGColor,
							[UIColor colorWithWhite:0.15 alpha:1.0].CGColor,
							[UIColor colorWithWhite:1.0 alpha:1.0].CGColor,
							nil];
		
	startLocations = [[NSArray arrayWithObjects:
					   [NSNumber numberWithFloat:0.0], 
					   [NSNumber numberWithFloat:1.0], 
					   [NSNumber numberWithFloat:1.0], 

					nil] retain];
	
	endLocations = [[NSArray arrayWithObjects:
					 [NSNumber numberWithFloat:0.0], 
					 [NSNumber numberWithFloat:0.0], 
					 [NSNumber numberWithFloat:1.0],
					  nil] retain];
	
	gradientLayer.locations = startLocations;
	
	gradientLayer.startPoint = CGPointMake(1.0, 0.5);
	gradientLayer.endPoint = CGPointMake(0.0, 0.5);

	
	[contentView.layer addSublayer:gradientLayer];

	[self performSelector:@selector(startAnimation) withObject:nil afterDelay:0.5];

}


-(void)startAnimation {
	
	
	CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"locations"];
	
	animation.fromValue = startLocations;
	
	animation.toValue = endLocations;
	
	 animation.duration	= 0.6;
	 
//	animation.repeatCount = 1e100f;
//	
//	animation.autoreverses = YES;

	animation.removedOnCompletion = NO;
	
	animation.fillMode = kCAFillModeForwards;
	
	animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
	
	[gradientLayer addAnimation:animation forKey:@"animateGradient"];
	
	

}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  
  
	  return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
