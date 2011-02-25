//
//  lockView.h
//  testLock
//
//  Created by mondialmac0002 on 2/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface lockView : UIView {
	NSMutableArray *sequenceButtonPoints;
}
@property(nonatomic,retain)NSMutableArray *sequenceButtonPoints;
- (void)resetView;
-(void)drawPoints:(NSMutableArray*)arrayOfButton withContext:(CGContextRef)context;
@end
