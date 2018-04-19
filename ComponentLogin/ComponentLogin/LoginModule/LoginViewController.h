//
//  LoginViewController.h
//  ComponentLogin
//
//  Created by 王水平 on 2018/4/17.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (nonatomic, copy) NSDictionary * params;

@property (nonatomic, copy) void (^messageBlock)(NSDictionary *info);

@end
