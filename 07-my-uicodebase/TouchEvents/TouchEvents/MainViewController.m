//
//  MainViewController.m
//  TouchEvents
//
//  Created by zhangcheng on 2017/6/26.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "MainViewController.h"
#import "SubView.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    SubView *subView1 = [[SubView alloc] initWithFrame:CGRectMake(20, 50, 100, 100)];
    [subView1 setBackgroundColor:[UIColor blackColor]];
    [subView1 setViewName:@"blackColor"];
    [self.view addSubview:subView1];
    
    SubView *subView2 = [[SubView alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    [subView2 setBackgroundColor:[UIColor redColor]];
    [subView2 setViewName:@"redColor"];
    [self.view addSubview:subView2];
    
    SubView *subView3 = [[SubView alloc] initWithFrame:CGRectMake(0, 0, 50, 150)];
    [subView3 setBackgroundColor:[UIColor yellowColor]];
    [subView3 setViewName:@"yellowColor"];
    [self.view addSubview:subView3];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [super touchesBegan:touches withEvent:event];
    NSLog(@"%@ %@",[self class], NSStringFromSelector(_cmd));
    
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
