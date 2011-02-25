//
//  testLockViewController.h
//  testLock
//
//  Created by mondialmac0002 on 2/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "lockView.h"
@interface testLockViewController : UIViewController {
	IBOutlet UIButton *buttonLock1;
	IBOutlet UIButton *buttonLock2;
	IBOutlet UIButton *buttonLock3;
	IBOutlet UIButton *buttonLock4;
	IBOutlet UIButton *buttonLock5;
	IBOutlet UIButton *buttonLock6;
	IBOutlet UIButton *buttonLock7;
	IBOutlet UIButton *buttonLock8;
	IBOutlet UIButton *buttonLock9;
}
@property (nonatomic, retain) IBOutlet UIButton *buttonLock1;
@property (nonatomic, retain) IBOutlet UIButton *buttonLock2;
@property (nonatomic, retain) IBOutlet UIButton *buttonLock3;
@property (nonatomic, retain) IBOutlet UIButton *buttonLock4;
@property (nonatomic, retain) IBOutlet UIButton *buttonLock5;
@property (nonatomic, retain) IBOutlet UIButton *buttonLock6;
@property (nonatomic, retain) IBOutlet UIButton *buttonLock7;
@property (nonatomic, retain) IBOutlet UIButton *buttonLock8;
@property (nonatomic, retain) IBOutlet UIButton *buttonLock9;
-(IBAction)rememberSequence;
-(BOOL)verifiedSequences:(NSString*)sButton;
@end

