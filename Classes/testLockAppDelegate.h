//
//  testLockAppDelegate.h
//  testLock
//
//  Created by mondialmac0002 on 2/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class testLockViewController;

@interface testLockAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    testLockViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet testLockViewController *viewController;

@end

