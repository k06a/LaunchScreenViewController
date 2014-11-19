//
//  LaunchScreenViewController.m
//  Xidmet
//
//  Created by Антон Буков on 19.11.14.
//  Copyright (c) 2014 Anton Bukov. All rights reserved.
//

#import "LaunchScreenViewController.h"

@interface LaunchScreenViewController ()

@property (nonatomic, strong) UIImageView *snapshotView;

@end

@implementation LaunchScreenViewController

- (UIImageView *)snapshotView
{
    if (_snapshotView == nil) {
        UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, YES, 0.0);
        [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        _snapshotView = [[UIImageView alloc] initWithImage:img];
    }
    return _snapshotView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view = [[UINib nibWithNibName:@"LaunchScreen" bundle:nil] instantiateWithOwner:nil options:nil].firstObject;
    
    UIApplication *app = [UIApplication sharedApplication];
    [app.keyWindow addSubview:self.snapshotView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.snapshotView removeFromSuperview];
}

@end
