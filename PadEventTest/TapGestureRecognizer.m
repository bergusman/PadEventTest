//
//  TapGestureRecognizer.m
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "TapGestureRecognizer.h"

#import <UIKit/UIGestureRecognizerSubclass.h>

@implementation TapGestureRecognizer

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"%@ moved", self.accessibilityLabel);
    
    [[Application sharedApplication].handlers addObject:self.accessibilityLabel];
    [super touchesMoved:touches withEvent:event];
    [[AppDelegate sharedDelegate].eventVC handleTouches:touches event:nil title:@"Moved"];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"%@ began", self.accessibilityLabel);
    
    [[Application sharedApplication].handlers addObject:self.accessibilityLabel];
    [super touchesBegan:touches withEvent:event];
    
    [[AppDelegate sharedDelegate].eventVC handleTouches:touches event:nil title:@"Began"];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ cancelled", self.accessibilityLabel);
    
    [[Application sharedApplication].handlers addObject:self.accessibilityLabel];
    [super touchesCancelled:touches withEvent:event];
    
    [[AppDelegate sharedDelegate].eventVC handleTouches:touches event:nil title:@"Cancelled"];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ ended", self.accessibilityLabel);
    [[Application sharedApplication].handlers addObject:self.accessibilityLabel];
    [super touchesEnded:touches withEvent:event];
    
    [[AppDelegate sharedDelegate].eventVC handleTouches:touches event:nil title:@"Ended"];
}

@end
