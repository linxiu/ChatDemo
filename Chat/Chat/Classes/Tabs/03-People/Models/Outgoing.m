//
//  Outgoing.m
//  Chat
//
//  Created by linxiu on 16/6/15.
//  Copyright © 2016年 甘真辉. All rights reserved.
//

#import "Outgoing.h"

@interface Outgoing()
{
    NSString *groupId;
    UIView *view;
}
@end

@implementation Outgoing
- (id)initWith:(NSString *)groupId_ View:(UIView *)view_{

    self = [super init];
    groupId = groupId_;
    view = view_;
    return self;
}
- (void)send:(NSString *)text Video:(NSURL *)video Picture:(UIImage *)picture Audio:(NSString *)audio{

    NSMutableDictionary *item = [[NSMutableDictionary alloc]init];
    
}
@end
