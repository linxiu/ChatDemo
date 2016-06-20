//
//  HYMessageViewController.m
//  Chat
//
//  Created by linxiu on 16/6/13.
//  Copyright © 2016年 甘真辉. All rights reserved.
//

#import "HYMessageViewController.h"

@interface HYMessageViewController ()

@end

@implementation HYMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"消息";

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Maps" style:UIBarButtonItemStylePlain target:self
                                                                            action:@selector(actionMaps)];
    //---------------------------------------------------------------------------------------------------------------------------------------------
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self
                                                                                           action:@selector(actionCompose)];
}

#pragma Mark action
-(void)actionMaps{
}

-(void)actionCompose{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Single recipient" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action) { [self actionSelectSingle]; }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Multiple recipients" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action) { [self actionSelectMultiple]; }];
    UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"Address Book" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action) { [self actionAddressBook]; }];
    UIAlertAction *action4 = [UIAlertAction actionWithTitle:@"Facebook Friends" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action) { [self actionFacebookFriends]; }];
    UIAlertAction *action5 = [UIAlertAction actionWithTitle:@"Select by Distance" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action) { [self actionSelectDistance]; }];
    UIAlertAction *action6 = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:action1]; [alert addAction:action2]; [alert addAction:action3];
    [alert addAction:action4]; [alert addAction:action5]; [alert addAction:action6];
    [self presentViewController:alert animated:YES completion:nil];
}
#pragma mark actionDelegate
- (void)actionSelectSingle{
}
-(void)actionSelectMultiple{
}
-(void)actionAddressBook{
}
-(void)actionFacebookFriends{
}
-(void)actionSelectDistance{
}
@end
