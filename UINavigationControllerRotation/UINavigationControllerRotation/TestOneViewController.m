//
//  TestOneViewController.m
//  TestRorate2
//
//  Created by bob on 13-10-28.
//  Copyright (c) 2013年 bob. All rights reserved.
//

#import "TestOneViewController.h"
#import "TestTwoViewController.h"

@interface TestOneViewController ()

@end

@implementation TestOneViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(100, 100, 160, 40)];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"下一个" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    self.title = @"第一个视图";
}

- (void)buttonClicked {
    TestTwoViewController *two = [[TestTwoViewController alloc] init];
    [self.navigationController pushViewController:two animated:YES];
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
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
}

@end
