//
//  MainViewController.m
//  CustomNavigationBar
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"

// 遵守 TableView 协议
@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UINavigationBar *navigationBar;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    // 隐藏导航条
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    // 设置列表坐标不受导航条影响
    [self setAutomaticallyAdjustsScrollViewInsets:NO];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self initTableView];
    [self initNavigationBar];
    
    [self setTitle:@"滚动渐变"];
}

// 初始化 TableView
- (void)initTableView{
    
    [self setTableView:[[UITableView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds)) style:UITableViewStylePlain]];
    
    // 设置协议代理为控制器本身
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    // 设置分割线样式
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    // 设置内容视图上边距
    [self.tableView setContentInset:UIEdgeInsetsMake(64, 0, 0, 0)];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:self.tableView];
    
}

// 初始化 NavigationBar
- (void)initNavigationBar{
    
    // 实例化导航条
    [self setNavigationBar:[[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 64)]];
    
    // 设置导航条背景颜色
    [self.navigationBar setBackgroundColor:[UIColor colorWithRed:237.0/255 green:190.0/255 blue:64.0/255 alpha:1.0]];
    //[self.navigationBar setBackgroundColor:[UIColor orangeColor]];
    
    // 关闭导航条半透明模糊效果
    //[self.navigationBar setTranslucent:NO];
    
    // 添加导航条
    [self.navigationController.view addSubview:self.navigationBar];
    
    // 移除导航条背景层
    for (UIView *subView in self.navigationBar.subviews) {
        //NSLog(@"%@",subView);
        if ([subView isKindOfClass:[NSClassFromString(@"_UINavigationBarBackgroud") class]]) {
            [subView removeFromSuperview];
        }
   }
    
}

// 实现 TableViewDelegate 中的方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    UIColor *color = self.navigationBar.backgroundColor;
    
    // 获取滚动Y轴偏移量
    CGFloat offsetY = scrollView.contentOffset.y;
    
    if (offsetY > 0) {
        CGFloat alpha = (200 - offsetY) / 200;
        self.navigationBar.backgroundColor = [color colorWithAlphaComponent:alpha];
    }else{
        self.navigationBar.backgroundColor = [color colorWithAlphaComponent:1];
    }
    
}

// 实现 TableViewDataSource 中的方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 100;
    
}

// 设置 TableViewCell 样式
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    [cell.textLabel setText:[NSString stringWithFormat:@"ROW-%zd",indexPath.row]];
    [cell setBackgroundColor:[[UIColor grayColor] colorWithAlphaComponent:1.0 / (arc4random() % 5)]];
    
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
