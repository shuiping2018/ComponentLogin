//
//  Targets_ComponentLogin.m
//  ComponentLogin
//
//  Created by 王水平 on 2018/4/17.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import "Target_ComponentLogin.h"
#import "LoginViewController.h"
#import "RegisteredViewController.h"

@implementation Target_ComponentLogin

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    LoginViewController *viewController = [[LoginViewController alloc] init];
    viewController.params = params;
    viewController.messageBlock = params[@"callback"];
    return viewController;
}

- (UIViewController *)Action_RegisteredViewController:(NSDictionary *)params
{
    RegisteredViewController *viewController = [[RegisteredViewController alloc] init];
    viewController.blue = params[@"color"];
    return viewController;
}

@end
