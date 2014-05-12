//
//  TouchCell.m
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "TouchCell.h"

@implementation TouchCell

+ (UINib *)nib {
    return [UINib nibWithNibName:NSStringFromClass(self) bundle:nil];
}

@end
