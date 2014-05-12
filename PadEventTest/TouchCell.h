//
//  TouchCell.h
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *phaseLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapLabel;
@property (weak, nonatomic) IBOutlet UILabel *viewLabel;
@property (weak, nonatomic) IBOutlet UILabel *windowLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

+ (UINib *)nib;

@end
