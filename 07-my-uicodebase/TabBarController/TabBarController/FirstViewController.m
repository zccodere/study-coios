//
//  FirstViewController.m
//  TabBarController
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "FirstViewController.h"
#import "ForthViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"First"];
    [self.view setBackgroundColor:[UIColor yellowColor]];
    NSLog(@"First: %s",__func__);
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(pushController)];
}

- (void)pushController{

    ForthViewController *forthVC = [[ForthViewController alloc] init];
    
    // 设置 PUSH 时，隐藏 选项卡栏
    [forthVC setHidesBottomBarWhenPushed:YES];
    
    [self.navigationController pushViewController:forthVC animated:YES];
    
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
