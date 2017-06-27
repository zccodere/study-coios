//
//  ThirdViewController.m
//  NavigationController
//
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"Thire"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(popController)];
    // 添加 导航栏菜单
    self.navigationItem.leftBarButtonItem = leftItem;
}

- (void)popController{

    // 返回一级视图跳转
    //[self.navigationController popViewControllerAnimated:YES];
    // 返回根视图控制器
    //[self.navigationController popToRootViewControllerAnimated:YES];
    
    NSLog(@"%@",self.navigationController.viewControllers);
    // 返回指定视图控制器
    [self.navigationController popToViewController:self.navigationController.viewControllers[1] animated:YES];
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
