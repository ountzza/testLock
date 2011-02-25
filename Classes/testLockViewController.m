//
//  testLockViewController.m
//  testLock
//
//  Created by mondialmac0002 on 2/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "testLockViewController.h"

@implementation testLockViewController
@synthesize buttonLock1;
@synthesize buttonLock2;
@synthesize buttonLock3;
@synthesize buttonLock4;
@synthesize buttonLock5;
@synthesize buttonLock6;
@synthesize buttonLock7;
@synthesize buttonLock8;
@synthesize buttonLock9;

//NSMutableArray*sequenceButton;
NSMutableString*sequenceString;
NSMutableArray*sequenceButtonPoints;
int countButton;
int totalButton;

int tempButton;
int oldButton;

int recording;
- (void)viewDidLoad {
    [super viewDidLoad];
	sequenceString = [[NSMutableString alloc] init];
	sequenceButtonPoints = [[NSMutableArray alloc] init];
	totalButton= 5;
	
	tempButton = 0;
	oldButton = 0;
	recording = 0;
}
-(IBAction)rememberSequence{
	recording = 1;
}
- (void) touchesMoved: (NSSet *)touches withEvent:(UIEvent *)event {
	CGPoint tappedPt = [[touches anyObject] locationInView: self.view];
	UIButton *selectedButton;
	
	if (CGRectContainsPoint(buttonLock1.frame, tappedPt)){
		tempButton = 1;
		selectedButton = buttonLock1;
	}
	if (CGRectContainsPoint(buttonLock2.frame, tappedPt)){
		tempButton = 2;
		selectedButton = buttonLock2;
	}
	if (CGRectContainsPoint(buttonLock3.frame, tappedPt)){
		tempButton = 3;
		selectedButton = buttonLock3;
	}
	if (CGRectContainsPoint(buttonLock4.frame, tappedPt)){
		tempButton = 4;
		selectedButton = buttonLock4;
	}
	if (CGRectContainsPoint(buttonLock5.frame, tappedPt)){
		tempButton = 5;
		selectedButton = buttonLock5;
	}
	if (CGRectContainsPoint(buttonLock6.frame, tappedPt)){
		tempButton = 6;
		selectedButton = buttonLock6;
	}
	if (CGRectContainsPoint(buttonLock7.frame, tappedPt)){
		tempButton = 7;
		selectedButton = buttonLock7;
	}
	if (CGRectContainsPoint(buttonLock8.frame, tappedPt)){
		tempButton = 8;
		selectedButton = buttonLock8;
	}
	if (CGRectContainsPoint(buttonLock9.frame, tappedPt)){
		tempButton = 9;
		selectedButton = buttonLock9;
	}
	if (oldButton!=tempButton) {
		[sequenceString appendString:[NSString stringWithFormat:@"%i",tempButton]];
		[sequenceButtonPoints addObject:selectedButton];
		oldButton = tempButton;
		
		lockView *view = (lockView *)self.view;
		[view setSequenceButtonPoints:sequenceButtonPoints];
		[view setNeedsDisplay];
		
		NSLog(@"sequenceString = %@",sequenceString);
		if (recording==1) {
			NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
			[prefs setObject:sequenceString forKey:@"LockSequence"];
			NSLog(@"recording = %@",[prefs objectForKey:@"LockSequence"]);
		}

		
	}
	
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

	[sequenceButtonPoints removeAllObjects];
	lockView *view = (lockView *)self.view;
	[view setSequenceButtonPoints:sequenceButtonPoints];
	[view setNeedsDisplay];
	NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
	NSLog(@"testRecord = %@ And current = %@",[prefs objectForKey:@"LockSequence"],sequenceString);
	if(([[prefs objectForKey:@"LockSequence"] isEqualToString:sequenceString])&&(recording==0)){
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Test"message:@"Correct!!" 
													   delegate:self cancelButtonTitle:@"OK"otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
	sequenceString = [[NSMutableString alloc] init];
	recording = 0;
	oldButton = 0;
	tempButton = 0;
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
	[buttonLock1 release];
    [buttonLock2 release];
    [buttonLock3 release];
    [buttonLock4 release];
    [buttonLock5 release];
    [buttonLock6 release];
    [buttonLock7 release];
    [buttonLock8 release];
    [buttonLock9 release];
}

@end
