//
//  WelcomeViewController.m
//  Chat
//
//  Created by linxiu on 16/6/13.
//  Copyright © 2016年 甘真辉. All rights reserved.
//

#import "WelcomeViewController.h"
#import "LoginEmailViewController.h"
#import "RegisterEmailViewController.h"

static const CGFloat emailBtnX = 15;
static const CGFloat eamilBtnH = 50;
@interface WelcomeViewController()
@property (nonatomic,strong) UIButton *loginEmailBtn,*registerEmailBtn;
@end

@implementation WelcomeViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"Welcome";
    
    [self initParenamers];
}
-(void)initParenamers{

    self.loginEmailBtn = ({
    
        UIButton *loginEmailBtn = [[UIButton alloc]initWithFrame:CGRectMake(emailBtnX, HYScreenHeight-eamilBtnH*2-15, HYScreenWidth-emailBtnX*2, eamilBtnH)];
        [loginEmailBtn setBackgroundColor:[UIColor redColor]];
        [loginEmailBtn setTitle:@"Email Login" forState:UIControlStateNormal];
        [loginEmailBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [loginEmailBtn addTarget:self action:@selector(actionLogin) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginEmailBtn];
        loginEmailBtn;
    });
    
    
    self.registerEmailBtn = ({
        
        UIButton *registerEmailBtn = [[UIButton alloc]initWithFrame:CGRectMake(emailBtnX, HYScreenHeight-eamilBtnH-10, HYScreenWidth-emailBtnX*2, eamilBtnH)];
        [registerEmailBtn setBackgroundColor:[UIColor redColor]];
        [registerEmailBtn setTitle:@"Email Register" forState:UIControlStateNormal];
        [registerEmailBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [registerEmailBtn addTarget:self action:@selector(actionRegister) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:registerEmailBtn];
        registerEmailBtn;
    });

}
#pragma mark action
-(void)actionLogin{
    LoginEmailViewController *login = [[LoginEmailViewController alloc]init];
    [self.navigationController pushViewController:login animated:YES];

}
-(void)actionRegister{

    RegisterEmailViewController *registerVC = [[RegisterEmailViewController alloc]init];
    [self.navigationController pushViewController:registerVC animated:YES];
}
@end
