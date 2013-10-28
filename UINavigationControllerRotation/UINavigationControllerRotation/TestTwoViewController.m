//
//  TestTwoViewController.m
//  TestRorate2
//
//  Created by bob on 13-10-28.
//  Copyright (c) 2013年 bob. All rights reserved.
//

#import "TestTwoViewController.h"

@interface TestTwoViewController ()

@end

@implementation TestTwoViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.title = @"第二个视图";
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [UIViewController attemptRotationToDeviceOrientation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeLeft | UIInterfaceOrientationLandscapeRight;
}

@end
