//
//  MainViewController.m
//  UIImageView
//
//  Created by zhangcheng on 2017/6/26.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 300, 300)];
    [imageView setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:imageView];
    
    // 设置图片方式一：imageNamed 加载图片
//    [imageView setImage:[UIImage imageNamed:@"Ball"]];
    
    // 设置图片方式二：NSData 加载图片
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"Ball" ofType:@"jpeg"];
//    NSData *imageData = [NSData dataWithContentsOfFile:path];
//    UIImage *image = [UIImage imageWithData:imageData];
//    [imageView setImage:image];
    
    // 设置图片填充方式
//    imageView.contentMode = UIViewContentModeScaleToFill;// 默认 拉伸
//    imageView.contentMode = UIViewContentModeScaleAspectFit; // 保持图片宽高比不变进行拉伸，较小值作为拉伸依据
//    imageView.contentMode = UIViewContentModeScaleAspectFill;// 保持图片宽高比不变进行拉伸，较大值作为拉伸依据
//    imageView.contentMode = UIViewContentModeCenter;// 不拉伸，保持图片原有尺寸大小
    
    // 创建图片数组
    NSMutableArray *imageArray = [NSMutableArray array];
    for (NSInteger i=0 ; i < 5; i++) {
        UIImage *imageTmep = [UIImage imageNamed:[NSString stringWithFormat:@"0%zd",i]];
        [imageArray addObject:imageTmep];
    }
    
    // 设置图片组
    [imageView setAnimationImages:imageArray];
    // 每张图片执行间隔
    [imageView setAnimationDuration:1];
    // 设置图片循环次数 0 无限次
    [imageView setAnimationRepeatCount:0];
    // 开始播放
    [imageView startAnimating];
    
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
