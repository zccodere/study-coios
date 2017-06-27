//
//  MainViewController.m
//  ParentChildView
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

// 控制器完成视图加载
- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置当前视图控制器的根视图的背景颜色
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIView *childView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [childView setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:childView];
    
    UIView *childView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 210, 100, 100)];
    [childView1 setBackgroundColor:[UIColor darkGrayColor]];
    [self.view addSubview:childView1];
    
    UIView *childView2 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    [childView2 setBackgroundColor:[UIColor redColor]];
    [childView1 addSubview:childView2];
    
    // 设置子视图超过父视图边界时，超出部分会被裁剪掉，默认NO
    [childView1 setClipsToBounds:YES];
    [childView1 setAlpha:0.5];
    
    UIView *childView3 = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    [childView3 setBackgroundColor:[UIColor blackColor]];
    [childView addSubview:childView3];
    
    UIView *childView4 = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    [childView4 setBackgroundColor:[UIColor redColor]];
    [childView insertSubview:childView4 aboveSubview:childView3];
    [childView insertSubview:childView4 belowSubview:childView3];
    [childView insertSubview:childView4 atIndex:childView.subviews.count - 1];
    //NSLog(@"subview:%@",self.view.subviews);
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
