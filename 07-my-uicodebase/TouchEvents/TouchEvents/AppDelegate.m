//
//  AppDelegate.m
//  TouchEvents
//
//  Created by zhangcheng on 2017/6/26.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "AppDelegate.h"
#import "MyWindow.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[MyWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window setRootViewController:[[MainViewController alloc] init]];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window makeKeyAndVisible];
    
    return YES;
}

// 触控开始回调的方法
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@ %@",[self class], NSStringFromSelector(_cmd));
    
}

// 触控移动回调的方法
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@ %@",[self class], NSStringFromSelector(_cmd));
    
}

// 触控结束回调的方法
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@ %@",[self class], NSStringFromSelector(_cmd));

}

// 触控取消回调的方法
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%@ %@",[self class], NSStringFromSelector(_cmd));

}

@end
