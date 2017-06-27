//
//  MainViewController.m
//  UIButton
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    
    button.frame = CGRectMake(20, 200, [UIScreen mainScreen].bounds.size.width - 20 * 2, 35);
    
    button.backgroundColor = [UIColor blueColor];
    
    // 正常状态下
    [button setTitle:@"Button(Normal)" forState:UIControlStateNormal];
    // 高亮状态下
    [button setTitle:@"Button(Highlighted)" forState:UIControlStateHighlighted];
    
    // 设置正常状态下背景图片
    [button setBackgroundImage:[[UIImage imageNamed:@"btn_green"] stretchableImageWithLeftCapWidth:5 topCapHeight:5 ] forState:UIControlStateNormal];
    // 设置高亮状态下背景图片
    [button setBackgroundImage:[[UIImage imageNamed:@"btn_green_h"] stretchableImageWithLeftCapWidth:5 topCapHeight:5 ] forState:UIControlStateHighlighted];
    
    // 设置按钮图标
    [button setImage:[UIImage imageNamed:@"wodepengyouquan"] forState:UIControlStateNormal];
    // 设置图标适应按钮样式
    button.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    // 给按钮添加响应事件
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClicked:(UIButton *)sender{
    NSLog(@"button 被点击");
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
