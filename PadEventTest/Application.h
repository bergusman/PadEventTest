//
//  Application.h
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Application : UIApplication

@property (strong, nonatomic) NSMutableArray *handlers;

+ (Application *)sharedApplication;

@end
