//
//  lockView.m
//  testLock
//
//  Created by mondialmac0002 on 2/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "lockView.h"


@implementation lockView
@synthesize sequenceButtonPoints;
CGContextRef context;
int blank;
- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        sequenceButtonPoints = [[NSMutableArray alloc] init];
		self.clearsContextBeforeDrawing = YES;

    }
    return self;
}
- (void)resetView {

	[sequenceButtonPoints removeAllObjects];
	[self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
	context= UIGraphicsGetCurrentContext();
	[self drawPoints:sequenceButtonPoints withContext:context];
}
-(void)drawPoints:(NSMutableArray*)arrayOfButton withContext:(CGContextRef)context{

		CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
		CGContextSetLineWidth(context, 5.0);
	
		UIButton*fakeButton = [[UIButton alloc] init];
		UIButton*firstPoint = [[UIButton alloc] init];
		if ([arrayOfButton count]==0) {
			firstPoint = fakeButton;
			NSLog(@"fake");
		}else {
			firstPoint = (UIButton*)[arrayOfButton objectAtIndex:0];
		}

		CGContextMoveToPoint(context, firstPoint.center.x, firstPoint.center.y);
	
	for(UIButton* nextPoint in arrayOfButton){
		CGContextAddLineToPoint(context, nextPoint.center.x, nextPoint.center.y);
	}
	CGContextStrokePath(context);
	UIGraphicsPushContext(context);
}


- (void)dealloc {
    [super dealloc];
}


@end
