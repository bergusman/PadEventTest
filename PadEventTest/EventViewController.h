//
//  EventViewController.h
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventViewController : UIViewController

- (void)handleTouches:(NSSet *)touches event:(UIEvent *)event title:(NSString *)title;

- (void)showHandlers:(NSArray *)handlers;

@end
