//
//  AppDelegate.h
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EventViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) EventViewController *eventVC;

+ (AppDelegate *)sharedDelegate;

@end
