//
//  HYPeopleViewController.m
//  Chat
//
//  Created by linxiu on 16/6/13.
//  Copyright © 2016年 甘真辉. All rights reserved.
//

#import "HYPeopleViewController.h"
#import "ChatViewController.h"
@interface HYPeopleViewController()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *peopleTableView;
@property (nonatomic,strong) NSMutableArray *peopleList;

@end

@implementation HYPeopleViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"联系人";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self
                                                                                           action:@selector(actionAdd)];
    [self initUI];

}
#pragma mark action
- (void)actionAdd{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Search user" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action) { [self actionSelectSingle]; }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Select users" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action) { [self actionSelectMultiple]; }];
    UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"Address Book" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action) { [self actionAddressBook]; }];
    UIAlertAction *action4 = [UIAlertAction actionWithTitle:@"Facebook Friends" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction *action) { [self actionFacebookFriends]; }];
    UIAlertAction *action5 = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:action1]; [alert addAction:action2]; [alert addAction:action3]; [alert addAction:action4]; [alert addAction:action5];
    [self presentViewController:alert animated:YES completion:nil];
}
#pragma alertDelegate
- (void)actionSelectSingle{

    
}
-(void)actionSelectMultiple{

}
-(void)actionAddressBook{
}
-(void)actionFacebookFriends{

}
#pragma mark 初始化
- (void)initUI{

    self.peopleTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, HYScreenWidth, HYScreenHeight-64) style:UITableViewStylePlain];
    self.peopleTableView.backgroundColor = [UIColor whiteColor];
    self.peopleTableView.delegate = self;
    self.peopleTableView.dataSource = self;
     [self setExtraCellLineHidden:self.peopleTableView]; //去掉多余的分割线
    [self.view addSubview:self.peopleTableView];
    
    _peopleList = [[NSMutableArray alloc]initWithObjects:@"David",@"Erin" ,@"Peter",@"henry",@"大白",nil];
}
-(void)setExtraCellLineHidden: (UITableView *)tableView
{
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
 
}
#pragma mark tableviewDatasource
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _peopleList.count;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ChatViewController *chat = [[ChatViewController alloc]init];
    [self.navigationController pushViewController:chat animated:YES];

}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *identifier = @"peopleCell";
   
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    tableView.separatorStyle =UITableViewCellSeparatorStyleSingleLine;
    if (!cell) {
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = _peopleList[indexPath.row];
    return cell;
}
@end
