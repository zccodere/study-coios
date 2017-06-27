//
//  MainViewController.m
//  FrameAndBounds
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
    
    UIView *childView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [childView setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:childView];
    
    UIView *childView1 = [[UIView alloc] initWithFrame:childView.bounds];// (0,0,100,100)
    [childView1 setBackgroundColor:[UIColor redColor]];
    [childView addSubview:childView1];
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
