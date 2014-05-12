//
//  Application.m
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "Application.h"

@interface Application ()



@end

@implementation Application

- (void)sendEvent:(UIEvent *)event {
    NSLog(@"---------------");
    NSLog(@"send event");
    
    self.handlers = [NSMutableArray array];
    [super sendEvent:event];
    [[AppDelegate sharedDelegate].eventVC showHandlers:self.handlers];
    [[AppDelegate sharedDelegate].eventVC handleTouches:nil event:event title:nil];
}

#pragma mark - Touches

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.handlers addObject:@"App"];
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.handlers addObject:@"App"];
    [super touchesCancelled:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.handlers addObject:@"App"];
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.handlers addObject:@"App"];
    [super touchesMoved:touches withEvent:event];
}

@end
