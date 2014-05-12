//
//  TouchCell+Setup.m
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "TouchCell+Setup.h"

@implementation TouchCell (Setup)

- (void)setupWithTouch:(UITouch *)touch {
    self.addressLabel.text = [NSString stringWithFormat:@"%p", touch];
    self.tapLabel.text = [NSString stringWithFormat:@"%lu taps", touch.tapCount];
    self.phaseLabel.text = [self phase:touch.phase];
    
    if (touch.window) {
        self.windowLabel.text = [NSString stringWithFormat:@"Win.: %@", touch.window.accessibilityLabel];
    } else {
        self.windowLabel.text = @"Win.: ---";
    }
    
    if (touch.view) {
        self.viewLabel.text = [NSString stringWithFormat:@"View: %@", touch.view.accessibilityLabel];
    } else {
        self.viewLabel.text = @"View: ---";
    }
    
    CGPoint location = [touch locationInView:touch.window];
    self.locationLabel.text = [NSString stringWithFormat:@"%.1f %.1f", location.x, location.y];
    //self.locationLabel.text = NSStringFromCGPoint(location);
}

- (NSString *)phase:(UITouchPhase)phase {
    if (phase == UITouchPhaseBegan) {
        return @"Began";
    } else if (phase == UITouchPhaseCancelled) {
        return @"Cancelled";
    } else if (phase == UITouchPhaseEnded) {
        return @"Ended";
    } else if (phase == UITouchPhaseMoved) {
        return @"Moved";
    } else if (phase == UITouchPhaseStationary) {
        return @"Stationary";
    }
    return nil;
}

@end
