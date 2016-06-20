//
//  ChatViewController.m
//  Chat
//
//  Created by linxiu on 16/6/15.
//  Copyright © 2016年 甘真辉. All rights reserved.
//

#import "ChatViewController.h"
#import "JSQMessages.h"
#import "Firebase.h"
@interface ChatViewController()
{
    NSString *groupId;
    
    BOOL initialized;
    int typingCounter;
    
    Firebase *firebase1;
    Firebase *firebase2;
    
    NSInteger loaded;
    NSMutableArray *loads;
    NSMutableArray *items;
    NSMutableArray *messages;
    
    NSMutableDictionary *started;
    NSMutableDictionary *avatars;
    
    JSQMessagesBubbleImage *bubbleImageOutgoing;
    JSQMessagesBubbleImage *bubbleImageIncoming;
    JSQMessagesAvatarImage *avatarImageBlank;

}
@end

@interface ChatViewController ()

@end

@implementation ChatViewController

- (id)initWith:(NSString *)groupId_{
    self = [super init];
    groupId = groupId_;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Chat";
    
    loads = [[NSMutableArray alloc] init];
    items = [[NSMutableArray alloc] init];
    messages = [[NSMutableArray alloc] init];
    started = [[NSMutableDictionary alloc] init];
    avatars = [[NSMutableDictionary alloc] init];
    
//    self.senderId = [PFUser currentId];
//    self.senderDisplayName = [PFUser currentName];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
