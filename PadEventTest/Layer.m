//
//  Layer.m
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "Layer.h"

@implementation Layer

- (CALayer *)hitTest:(CGPoint)p {
    //NSLog(@"HIT TEST");
    return [super hitTest:p];
}

- (BOOL)containsPoint:(CGPoint)p {
    //NSLog(@"CONTAINS POINT");
    return [super containsPoint:p];
}

@end
