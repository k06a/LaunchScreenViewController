//
//  MyLaunchScreenViewController.m
//  Example
//
//  Created by Антон Буков on 21.11.14.
//  Copyright (c) 2014 Anton Bukov. All rights reserved.
//

#import "MyLaunchScreenViewController.h"

@interface MyLaunchScreenViewController ()

@property (nonatomic, weak) UILabel *label;

@end

@implementation MyLaunchScreenViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.label = (id)[self.view viewWithTag:1];
    self.label.hidden = NO;
    self.label.alpha = 0.0;
    [UIView animateWithDuration:0.5 animations:^{
        self.label.alpha = 1.0;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5.0 animations:^{
            self.label.transform = CGAffineTransformMakeRotation(M_PI);
        }];
    }];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self dismissViewControllerAnimated:YES completion:nil];
    });
}

@end
