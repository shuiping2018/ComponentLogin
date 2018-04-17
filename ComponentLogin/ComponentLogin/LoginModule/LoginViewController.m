//
//  LoginViewController.m
//  ComponentLogin
//
//  Created by 王水平 on 2018/4/17.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import "LoginViewController.h"
#import <Masonry/Masonry.h>

@interface LoginViewController ()

@property (nonatomic, strong) UITextField * accountTextField;
@property (nonatomic, strong) UITextField * passwordTextField;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"登录";
    
    [self initAccountTextField];
    [self initPasswordTextField];
    [self initLoginButton];
    
}

- (void)initAccountTextField
{
    _accountTextField = [[UITextField alloc] init];
    _accountTextField.backgroundColor = [UIColor orangeColor];
    _accountTextField.borderStyle = UITextBorderStyleRoundedRect;
    _accountTextField.keyboardType = UIKeyboardTypeDefault;
    _accountTextField.background = [UIImage imageNamed:@""];
    _accountTextField.disabledBackground = [UIImage imageNamed:@""]; //设置背景
    _accountTextField.placeholder = @"请输入账号";
    _accountTextField.font = [UIFont systemFontOfSize:14];
    _accountTextField.textColor = [UIColor blackColor];
    _accountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _accountTextField.secureTextEntry = NO; //密文输入 *
    _accountTextField.clearsOnBeginEditing = NO; //再次输入就清空
    [self.view addSubview:_accountTextField];
    
    [_accountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.view).offset(100);
        make.left.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        make.height.mas_equalTo(50);
    }];
}

- (void)initPasswordTextField
{
    _passwordTextField = [[UITextField alloc] init];
    _passwordTextField.backgroundColor = [UIColor orangeColor];
    _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    _passwordTextField.keyboardType = UIKeyboardTypeDefault;
    _passwordTextField.background = [UIImage imageNamed:@""];
    _passwordTextField.disabledBackground = [UIImage imageNamed:@""]; //设置背景
    _passwordTextField.placeholder = @"请输入密码";
    _passwordTextField.font = [UIFont systemFontOfSize:14];
    _passwordTextField.textColor = [UIColor blackColor];
    _passwordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _passwordTextField.text = @"1234";
    _passwordTextField.secureTextEntry = NO; //密文输入 *
    _passwordTextField.clearsOnBeginEditing = NO; //再次输入就清空
    [self.view addSubview:_passwordTextField];
    
    [_passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.accountTextField.mas_bottom).offset(30);
        make.left.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        make.height.mas_equalTo(50);
    }];
}

- (void)initLoginButton
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:16];
    [btn addTarget:self action:@selector(clickedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.passwordTextField.mas_bottom).offset(30);
        make.left.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        make.height.mas_equalTo(50);
    }];
}

- (void)clickedBtn:(UIButton *)btn
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
