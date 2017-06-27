//
//  MainViewController.m
//  UIView
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

// 每一个视图控制器都管理着一个自己的根视图
@implementation MainViewController

// 视图被加载时
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"controller loaded");
    // 设置当前视图控制器的根视图的背景颜色
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    // 创建并初始化视图
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    // 设置视图背景颜色
    [view setBackgroundColor:[UIColor orangeColor]];
    // 将视图添加到 window 添加视图的先后顺序决定视图的层级
    [self.view addSubview:view];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(60, 60, 100, 100)];
    [view2 setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:view2];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 300, 400)];
    [view1 setBackgroundColor:[UIColor blackColor]];
    // 设置视图透明度
    [view1 setAlpha:0.5];
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(60, 60, 120, 120)];
    [view3 setBackgroundColor:[UIColor yellowColor]];
    [view1 addSubview:view3];
    [self.view addSubview:view1];
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
