//
//  Targets_ComponentLogin.m
//  ComponentLogin
//
//  Created by 王水平 on 2018/4/17.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import "Target_ComponentLogin.h"
#import "LoginViewController.h"

@implementation Target_ComponentLogin

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    LoginViewController *viewController = [[LoginViewController alloc] init];
    return viewController;
}

@end
