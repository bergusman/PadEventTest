//
//  ViewController.m
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //self.view.accessibilityLabel = @"A";
    
    //UIView *v = [self.view viewWithTag:12];
    
    //v.exclusiveTouch = YES;
    //v.multipleTouchEnabled = YES;
    
    self.accessibilityLabel = @"VC";
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
