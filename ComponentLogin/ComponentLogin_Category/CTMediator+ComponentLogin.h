//
//  CTMediator+ComponentLogin.h
//  ComponentLogin
//
//  Created by 王水平 on 2018/4/17.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

@interface CTMediator (ComponentLogin)

- (UIViewController *)ComponentLogin_loginViewControllerWithCallback:(void(^)(NSString *result))callback;

@end
