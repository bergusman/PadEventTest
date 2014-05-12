//
//  EventViewController.m
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "EventViewController.h"

#import "TouchCell.h"
#import "TouchCell+Setup.h"

@interface EventViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *eventLabel;
@property (weak, nonatomic) IBOutlet UILabel *timestampLabel;

@property (weak, nonatomic) IBOutlet UICollectionView *touchesCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *allTouchesCollectionView;

@property (strong, nonatomic) NSArray *touches;
@property (strong, nonatomic) NSArray *allTouches;

@property (weak, nonatomic) IBOutlet UILabel *action;

@property (weak, nonatomic) IBOutlet UILabel *handlersLabel;

@end

@implementation EventViewController

#pragma mark - Setups

- (void)setupCollectionViews {
    [self.touchesCollectionView registerNib:[TouchCell nib] forCellWithReuseIdentifier:@"cell"];
    [self.allTouchesCollectionView registerNib:[TouchCell nib] forCellWithReuseIdentifier:@"cell"];
}

#pragma mark - Content

- (void)handleTouches:(NSSet *)touches event:(UIEvent *)event title:(NSString *)title {
    if (event) {
        self.eventLabel.text = [NSString stringWithFormat:@"<%@: %p>", [event class], event];
        self.timestampLabel.text = [NSString stringWithFormat:@"%f", event.timestamp];
        
        self.allTouches = [[event allTouches] allObjects];
        [self.allTouchesCollectionView reloadData];
    }
    
    if (touches) {
        self.touches = [touches allObjects];
        [self.touchesCollectionView reloadData];
    }
    
    if (title) {
        self.action.text = title;
    }
}

- (void)showHandlers:(NSArray *)handlers {
    self.handlersLabel.text = [[[handlers reverseObjectEnumerator] allObjects] componentsJoinedByString:@", "];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (collectionView == self.touchesCollectionView) {
        return [self.touches count];
    } else if (collectionView == self.allTouchesCollectionView) {
        return [self.allTouches count];
    }
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TouchCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    UITouch *touch;
    
    if (collectionView == self.touchesCollectionView) {
        touch = self.touches[indexPath.row];
    } else if (collectionView == self.allTouchesCollectionView) {
        touch = self.allTouches[indexPath.row];
    }
    
    [cell setupWithTouch:touch];
    
    return cell;
}

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupCollectionViews];
}

@end
