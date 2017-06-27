//
//  main.m
//  Singleton
//
//  Created by zhangcheng on 2017/6/12.
//  Copyright © 2017年 com.zccoder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "LoginView.h"
#import "SettingView.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        User *user1 = [User sharedUser];
        User *user2 = [[User alloc] init];
        
        NSLog(@"&user1 = %p",user1);
        NSLog(@"&user2 = %p",user2);
        
        LoginView *loginView = [[LoginView alloc] init];
        SettingView *settingView = [[SettingView alloc] init];
        
        [loginView login];
        [settingView about];
        
    }
    return 0;
}
