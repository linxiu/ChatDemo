//
//  HYRootViewController.h
//  Chat
//
//  Created by linxiu on 16/6/13.
//  Copyright © 2016年 甘真辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYBasicRootViewController : UIViewController
- (void)initParameters; // 参数初始化
- (void)initUIView; // 页面UI初始化
- (void)getDataFromNet; // 网络数据请求

@end
