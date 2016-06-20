//
//  HYChatTabBarController.m
//  Chat
//
//  Created by linxiu on 16/6/13.
//  Copyright © 2016年 甘真辉. All rights reserved.
//

#import "HYChatTabBarController.h"
#import "HYMessageViewController.h"
#import "HYGroupViewController.h"
#import "HYPeopleViewController.h"
#import "HYSettingViewController.h"
#import "HYNavigationController.h"

@interface HYChatTabBarController()<UITabBarControllerDelegate>
@end

@implementation HYChatTabBarController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setCustomAppearance];
    [self setTabBarController];
}
#pragma mark - 设置TabBarController
- (void)setTabBarController{
    self.delegate = self;
    [self setViewControllers:[self viewControllers]];
}
- (NSArray *)viewControllers{

    HYMessageViewController *messageVC = [[HYMessageViewController alloc]init];
    self.messageNavgationController = [[HYNavigationController alloc]initWithRootViewController:messageVC];
    _messageNavgationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"消息" image:[UIImage imageNamed:@"tab_recent"] selectedImage:[UIImage imageNamed:@""]];
    _messageNavgationController.tabBarItem.selectedImage = [[UIImage imageNamed:@""] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _messageNavgationController.tabBarItem.tag =  HYLoginSuccessBackTypeMessage;
    
    HYGroupViewController *groupVC = [[HYGroupViewController alloc]init];
    self.groupsNavgationController = [[HYNavigationController alloc]initWithRootViewController:groupVC];
    _groupsNavgationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"组" image:[UIImage imageNamed:@"tab_groups"] selectedImage:[UIImage imageNamed:@""]];
    _groupsNavgationController.tabBarItem.selectedImage = [[UIImage imageNamed:@""] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _groupsNavgationController.tabBarItem.tag =  HYLoginSuccessBackTypeGroup;
    
    
    HYPeopleViewController *peopleVC = [[HYPeopleViewController alloc]init];
    self.peopleNavgationController = [[HYNavigationController alloc]initWithRootViewController:peopleVC];
    _peopleNavgationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"联系人" image:[UIImage imageNamed:@"tab_people"] selectedImage:[UIImage imageNamed:@""]];
    _peopleNavgationController.tabBarItem.selectedImage = [[UIImage imageNamed:@""] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _peopleNavgationController.tabBarItem.tag =  HYLoginSuccessBackTypePeople;
    
    HYSettingViewController *settingVC = [[HYSettingViewController alloc]init];
    self.settingNavgationController = [[HYNavigationController alloc]initWithRootViewController:settingVC];
    _settingNavgationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"设置" image:[UIImage imageNamed:@"tab_settings"] selectedImage:[UIImage imageNamed:@""]];
    _settingNavgationController.tabBarItem.selectedImage = [[UIImage imageNamed:@""] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _settingNavgationController.tabBarItem.tag =  HYLoginSuccessBackTypeSetting;
    
    
    
    return @[_messageNavgationController,_groupsNavgationController,_peopleNavgationController,_settingNavgationController];
}
#pragma mark - 自定义控件外观--导航和tabar
- (void)setCustomAppearance
{
   
    /* UINavigationBar */
//    [[UINavigationBar appearance]setTintColor:HYRGB(51, 51, 51)];//字体黑色
//    NSDictionary *nNormalDictionary = @{NSForegroundColorAttributeName:HYRGB(51, 51, 51),
//                                        NSFontAttributeName:HYFontSize18};
//    [[UINavigationBar appearance] setTitleTextAttributes:nNormalDictionary];
//    [[UINavigationBar appearance] setBarTintColor:HYRGB(255, 255, 255)];//导航背景主色调：白色
//    [[UINavigationBar appearance] setTranslucent:NO];
    
    
    /* UITarBarItem */
     // 设置正常状态下TabBarItem字体
    NSDictionary *normalDictionary = @{NSForegroundColorAttributeName:HYRGB(128, 128, 128),
                                       NSFontAttributeName:HYFontSize11};
     [[UITabBarItem appearance] setTitleTextAttributes:normalDictionary forState:UIControlStateNormal];
    
    // 设置选中状态下TabBarItem字体
    NSDictionary *selectedDictionary = @{NSForegroundColorAttributeName:HYBlueColor,
                                         NSFontAttributeName:HYFontSize11};
    [[UITabBarItem appearance] setTitleTextAttributes:selectedDictionary forState:UIControlStateSelected];
    [[UITabBar appearance]setBackgroundColor:HYTableViewGrayColor];
    [self.tabBar setClipsToBounds:YES];
    self.tabBar.translucent = NO;
}
#pragma mark - UITabBarControllerDelegate
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
 return YES;
}
@end
