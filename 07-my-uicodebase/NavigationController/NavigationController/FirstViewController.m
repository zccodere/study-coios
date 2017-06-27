//
//  FirstViewController.m
//  NavigationController
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置标题
    [self setTitle:@"First"];
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    // 创建 导航菜单按钮
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:NULL];
    
    // 自定义 按钮样式
    UIButton *itemButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    [itemButton setFrame:CGRectMake(0, 0, 100, 30)];
    [itemButton setBackgroundColor:[UIColor lightGrayColor]];
    [itemButton setTitle:@"Item" forState:UIControlStateNormal];
    [itemButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithCustomView:itemButton];
    
    // 在左侧添加 导航菜单按钮
    //self.navigationItem.leftBarButtonItem = item1;
    
    self.navigationItem.leftBarButtonItems = @[item1,item2];
    
    // 设置导航条背景颜色
    self.navigationController.navigationBar.backgroundColor = [UIColor blueColor];
    // 设置导航条背景图片
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_navBar"] forBarMetrics:UIBarMetricsDefault];
    
    UIButton *pushButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushButton setFrame:CGRectMake(100, 80, 100, 30)];
    [pushButton setBackgroundColor:[UIColor blackColor]];
    [pushButton setTitle:@"Push" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushController) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:pushButton];
}

// 处理按钮事件
- (void)pushController{
    
    // 跳转到 SecondViewController
    [self.navigationController pushViewController:[[SecondViewController alloc] init] animated:YES];
    
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
