//
//  FirstTableViewController.m
//  TableViewRudiment
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "FirstTableViewController.h"

@interface FirstTableViewController ()<UITableViewDataSource>

@end

@implementation FirstTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    // 创建 TabView
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
}

// pargma mark - table view data source -

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    // 设置头部视图样式
    
    return @"Header";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    // 指定 TableView 分组数
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    // 指定记录数据总数
    return 5;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
//    cell.textLabel.text = @"Test";
//    cell.imageView.image = [UIImage imageNamed:@"groupsIndex_event"];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 150, 40)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    [cell addSubview:textField];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
