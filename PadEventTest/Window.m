//
//  Window.m
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "Window.h"

@implementation Window

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [[Application sharedApplication].handlers addObject:self.accessibilityLabel];
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [[Application sharedApplication].handlers addObject:self.accessibilityLabel];
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [[Application sharedApplication].handlers addObject:self.accessibilityLabel];
    [super touchesCancelled:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [[Application sharedApplication].handlers addObject:self.accessibilityLabel];
    [super touchesEnded:touches withEvent:event];
}

@end
