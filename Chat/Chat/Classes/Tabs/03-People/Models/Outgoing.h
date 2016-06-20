//
//  Outgoing.h
//  Chat
//
//  Created by linxiu on 16/6/15.
//  Copyright © 2016年 甘真辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/*
   发出去的消息，包括文字，图片，视频，语音，拍照，位置
 */
@interface Outgoing : NSObject

- (id)initWith:(NSString *)groupId_ View:(UIView *)view_;

- (void)send:(NSString *)text Video:(NSURL *)video Picture:(UIImage *)picture Audio:(NSString *)audio;
@end
