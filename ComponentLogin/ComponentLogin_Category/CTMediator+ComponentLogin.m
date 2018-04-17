//
//  CTMediator+ComponentLogin.m
//  ComponentLogin
//
//  Created by 王水平 on 2018/4/17.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import "CTMediator+ComponentLogin.h"

@implementation CTMediator (ComponentLogin)

- (UIViewController *)ComponentLogin_loginViewControllerWithCallback:(void(^)(NSString *result))callback
{
    NSMutableDictionary * params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"ComponentLogin" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
