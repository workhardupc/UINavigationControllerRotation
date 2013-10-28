//
//  UINavigationController+Rotation.m
//  TestRorate2
//
//  Created by bob on 13-10-28.
//  Copyright (c) 2013年 bob. All rights reserved.
//

#import "UINavigationController+Rotation.h"



@implementation UINavigationController(Rotation)

-(BOOL)shouldAutorotate {
    return [[self.viewControllers lastObject] shouldAutorotate];
}

-(NSUInteger)supportedInterfaceOrientations {
    return [[self.viewControllers lastObject] supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}

@end
