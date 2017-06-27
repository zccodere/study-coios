//
//  MainViewController.m
//  TableViewReusableCell
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"
#import "ImageCell.h"

@interface MainViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *tableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"单元格重用"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    // 创建并初始化 tableView
    [self setTableView:[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain]];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    [self.tableView registerClass:[ImageCell class] forCellReuseIdentifier:@"ImageCell"];
    [self.view addSubview:self.tableView];
    
}

/*
 #pragma mark - UITableViewDataSource
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 18;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ImageCell *cell = [[ImageCell alloc] init];
    
    [cell updateCellAtRow:indexPath.row];
    
    return cell;
    
}
*/

// 实现 重用
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ImageCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ImageCell"];
    
    [cell updateCellAtRow:indexPath.row];
    
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 设置tableView 行高
    return CGRectGetWidth([UIScreen mainScreen].bounds);
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
