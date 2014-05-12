//
//  AppDelegate.m
//  PadEventTest
//
//  Created by Vitaly Berg on 08/05/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "AppDelegate.h"

#import "EventViewController.h"
#import "ScrollViewController.h"
#import "ViewController.h"
#import "Window.h"

@interface AppDelegate ()

@property (strong, nonatomic) ViewController *viewVC;
@property (strong, nonatomic) ScrollViewController *scrollVC;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[Window alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.accessibilityLabel = @"W";
    [self.window makeKeyAndVisible];
    
    //self.window.multipleTouchEnabled = YES;
    
    EventViewController *eventVC = [[EventViewController alloc] init];
    [self.window addSubview:eventVC.view];
    eventVC.view.frame = CGRectMake(0, 1024 - 200, 768, 200);
    
    ViewController *viewVC = [[ViewController alloc] init];
    //[self.window addSubview:viewVC.view];
    //self.window.rootViewController = viewVC;
    //viewVC.view.frame = CGRectMake(0, 0, 768, 824);
    
    ScrollViewController *scrollVC = [[ScrollViewController alloc] init];
    [self.window addSubview:scrollVC.view];
    scrollVC.view.frame = CGRectMake(0, 0, 768, 824);
    self.scrollVC = scrollVC;
    
    self.eventVC = eventVC;
    self.viewVC = viewVC;
    
    //NSLog(@"%@", self.window.gestureRecognizers);
    
    /*
    NSArray *gs = self.window.gestureRecognizers;
    [gs enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [self.window removeGestureRecognizer:obj];
    }];
     */
    
    UIScrollView *s = [[UIScrollView alloc] init];
    
    NSLog(@"%@", s.gestureRecognizers);
    
    return YES;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    NSLog(@"! %@", change);
}

#pragma mark - Touches

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [[Application sharedApplication].handlers addObject:@"Dlg"];
    [super touchesMoved:touches withEvent:event];
    [self.eventVC handleTouches:touches event:event title:@"Moved"];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [[Application sharedApplication].handlers addObject:@"Dlg"];
    [super touchesBegan:touches withEvent:event];
    [self.eventVC handleTouches:touches event:event title:@"Began"];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [[Application sharedApplication].handlers addObject:@"Dlg"];
    [super touchesCancelled:touches withEvent:event];
    [self.eventVC handleTouches:touches event:event title:@"Cancelled"];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [[Application sharedApplication].handlers addObject:@"Dlg"];
    [super touchesEnded:touches withEvent:event];
    [self.eventVC handleTouches:touches event:event title:@"Ended"];
}


+ (AppDelegate *)sharedDelegate {
    return [Application sharedApplication].delegate;
}

@end
