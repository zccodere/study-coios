//
//  AppDelegate.m
//  TabBarController
//  标签栏控制器的使用
//  Created by zhangcheng on 2017/6/27.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self setWindow:[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds]];
    [self.window makeKeyAndVisible];
    
    // 创建 TabBar 实例对象
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController.view setBackgroundColor:[UIColor whiteColor]];
    [self.window setRootViewController:tabBarController];
    
    // 选项卡一
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    firstVC.tabBarItem.title = @"First";
    // 设置正常状态下背景图片
    firstVC.tabBarItem.image = [[UIImage imageNamed:@"tabbar_account"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置选中状态下背景图片
    firstVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_account_press"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *navFirstController = [[UINavigationController alloc] initWithRootViewController:firstVC];
    
    // 选项卡二
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    secondVC.tabBarItem.title = @"Second";
    // 设置正常状态下背景图片
    secondVC.tabBarItem.image = [[UIImage imageNamed:@"tabbar_account"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置选中状态下背景图片
    secondVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_account_press"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *navSecondController = [[UINavigationController alloc] initWithRootViewController:secondVC];
    
    // 选项卡三
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    thirdVC.tabBarItem.title = @"Third";
    // 设置正常状态下背景图片
    thirdVC.tabBarItem.image = [[UIImage imageNamed:@"tabbar_account"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置选中状态下背景图片
    thirdVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_account_press"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *navThirdController = [[UINavigationController alloc] initWithRootViewController:thirdVC];
    
    
    [tabBarController.tabBar setBackgroundColor:[UIColor lightGrayColor]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13]} forState:UIControlStateNormal];
    
    // 将选项卡添加到选项卡栏
    [tabBarController setViewControllers:@[navFirstController,navSecondController,navThirdController]];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
