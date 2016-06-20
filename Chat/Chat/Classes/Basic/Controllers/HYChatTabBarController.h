//
//  HYChatTabBarController.h
//  Chat
//
//  Created by linxiu on 16/6/13.
//  Copyright © 2016年 甘真辉. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, HYLoginSuccessBackType) { // 登入成功后返回页面
    HYLoginSuccessBackTypeNone = -1,
    HYLoginSuccessBackTypeMessage = 0, //消息
    HYLoginSuccessBackTypeGroup = 1, // groups
    HYLoginSuccessBackTypePeople = 2, // people
    HYLoginSuccessBackTypeSetting = 3, // setting

};
@class HYNavigationController;

@interface HYChatTabBarController : UITabBarController

@property (nonatomic, strong) HYNavigationController *messageNavgationController;
@property (nonatomic, strong) HYNavigationController *groupsNavgationController;
@property (nonatomic, strong) HYNavigationController *peopleNavgationController;
@property (nonatomic, strong) HYNavigationController *settingNavgationController;
@end
