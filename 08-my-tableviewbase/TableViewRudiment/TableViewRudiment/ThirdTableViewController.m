//
//  ThirdTableViewController.m
//  TableViewRudiment
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "ThirdTableViewController.h"
#import "CustomTableView.h"
#import "TableViewDataSource.h"

@interface ThirdTableViewController ()

@property (nonatomic,strong) TableViewDataSource *dataSource;

@end

@implementation ThirdTableViewController

- (void)viewDidLoad {
    
    [self setDataSource:[TableViewDataSource dataSource]];
    CustomTableView *tableView = [CustomTableView tableViewWithDataSource:self.dataSource];
    [self.view addSubview:tableView];
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
