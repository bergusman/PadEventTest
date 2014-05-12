//
//  ScrollViewController.m
//  PadEventTest
//
//  Created by Vitaly Berg on 09/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()

@property (weak, nonatomic) IBOutlet UIView *view1;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


@end

@implementation ScrollViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)infoAction:(id)sender {
    NSLog(@"%@", NSStringFromCGRect(self.scrollView.bounds));
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //fmax(0, 0);
    
    self.view1.bounds = CGRectMake(-50, 50, 100, 100);
    
    self.scrollView.contentSize = CGSizeMake(280, 1000);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
